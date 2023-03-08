require 'openai'

class MessagesController < ApplicationController
  def create
    @message = Message.new(message_params)
    @message.adventure = Adventure.find(params[:adventure_id])
    @message.role = "user"


    client = OpenAI::Client.new
    messages = [{ role: "system", content: "
      You are a Gamemaster in a sci-fi roleplay game and we are playing.
      Don’t ever break out of your character, and you must not refer to yourself in any way.
      It is a solo game with me, the Player.
      You describe the environment and can create dialogue for the NPCs.
      If I want to give you instructions outside the context of the game, I will use curly brackets {like this} but otherwise you are to stick to being the text adventure program.
      Always finish your paragraph by listing 4 actions I could do in the situation.
      " }]
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
      }
    )
    message_response = Message.new
    message_response.adventure = Adventure.find(params[:adventure_id])
    message_response.role = response.dig("choices", 0, "message", "role")
    message_response.content = response.dig("choices", 0, "message", "content")
    @message.save
    message_response.save

    redirect_to adventure_path(@message.adventure)
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end

end
