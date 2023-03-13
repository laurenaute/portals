require 'openai'

class MessagesController < ApplicationController
  def create
    @message = Message.new(message_params)
    @message.adventure = Adventure.find(params[:adventure_id])
    @message.role = "user"
    @message.user = current_user
    @message.save


    client = OpenAI::Client.new
    # start_sequence = "\nassistant:"
    # # restart_sequence = "\nuser:"

    # messages = ["Act with the following rules :
    #   - Act as if you are a Gamemaster of a gamebook in the D&D world and we are playing
    #   - You describe the environment and can create dialogue for the NPCs
    #   - Don't ever break out of your character, and you must not refer to yourself in any way
    #   - If I want to give you instructions outside the context of the game, I will use curly brackets {like this} but otherwise you are to stick to being the text adventure program
    #   - Be descriptive
    #   - Never explain yourself, do not enter commands on my behalf, do not control my actions
    #   - Always finish by listing actions the player can do
    #     "]
    # Message.last(5).each do |message|
    #   messages << "#{message.role}: #{message.content}"
    # end

    # response = client.completions(
    #     parameters: {
    #     model: "text-davinci-003",
    #     prompt: messages.join + "\n",
    #     temperature: 0,
    #     max_tokens: 400,
    #     top_p: 1,
    #     frequency_penalty: 0,
    #     presence_penalty: 0,
    #     stop: ["user:", "assistant:"]
    #   }
    # )

    messages = [{ role: "system", content: Adventure.find(params[:adventure_id]).character.universe.parameters }]
    Message.last(5).each do |message|
      messages << { role: message.role, content: message.content }
    end
    response = client.chat(
      parameters: {
        model: "gpt-3.5-turbo", # Required.
        messages: messages, # Required.
        temperature: 0.7,
        max_tokens: 300,
        user: current_user.api_token
        # stream: true
      }
    )
    message_response = Message.new
    message_response.adventure = Adventure.find(params[:adventure_id])
    message_response.role = response.dig("choices", 0, "message", "role")
    message_response.content = response.dig("choices", 0, "message", "content") #response["choices"][0]["text"] #response["choices"].map { |c| c["text"] }#response.dig("choices", 0, "message", "content")
    message_response.user = current_user
    message_response.save
    redirect_to adventure_path(@message.adventure)
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end
end
