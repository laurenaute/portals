require 'openai'
require 'json'

class MessagesController < ApplicationController
  def create
    @message = Message.new(message_params)
    @adventure = Adventure.find(params[:adventure_id])
    @message.adventure = @adventure
    @message.role = "user"
    @message.user = current_user
    @message.save

    AdventureChannel.broadcast_to(
      @adventure,
      render_to_string(partial: "messages/message", locals: { message: @message } )
    )

    client = OpenAI::Client.new

    content = Adventure.find(params[:adventure_id]).character.universe.parameters +
              "\n- The player character name is : " + @adventure.character_name +
              "\n" + @adventure.character.parameters +
              ( @adventure.choices ? "\n" + Prompt.find_by(name: "choices").content : "" ) +
              ( @adventure.difficulty == "Facile" ? "\n" + Prompt.find_by(name: "difficulty-easy").content : "" ) +
              ( @adventure.difficulty == "Difficile" ? "\n" + Prompt.find_by(name: "difficulty-hard").content : "" )

    messages = [{ role: "system", content: content }]
    Message.last(5).each do |message|
      messages << { role: message.role, content: message.content }
    end
    response = client.chat(
      parameters: {
        model: "gpt-3.5-turbo", # Required.
        messages: messages, # Required.
        temperature: 0.7,
        max_tokens: 500,
        user: current_user.api_token
        # stream: true
      }
    )
    # parsed_response = JSON.parse(response.parsed_response)
    # raise
    message_response = Message.new
    message_response.log = response
    message_response.adventure = Adventure.find(params[:adventure_id])
    message_response.role = response.dig("choices", 0, "message", "role")
    message_response.content = response.dig("choices", 0, "message", "content") #response["choices"][0]["text"] #response["choices"].map { |c| c["text"] }#response.dig("choices", 0, "message", "content")
    message_response.user = current_user
    # raise
    message_response.save
    AdventureChannel.broadcast_to(
      @adventure,
      render_to_string(partial: "messages/message", locals: { message: message_response } )
    )

    AdventureChannel.broadcast_to(
      @adventure,
      render_to_string(partial: "adventures/buttons", locals: { message: message_response } )
    )
    head :ok
    # redirect_to adventure_path(@message.adventure)
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end
end
