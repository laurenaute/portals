require 'openai'

class AdventuresController < ApplicationController
  before_action :set_adventure, only: [:show, :edit, :update, :destroy]

  def index
    @adventures = Adventure.all
  end

  def show
    @message = Message.new

    if @adventure.messages.last == nil
      initializer = Message.new
      initializer.adventure = @adventure
      initializer.role = "system"

      client = OpenAI::Client.new

      # messages = ["Act with the following rules :
      #   - Act as if you are a Gamemaster of a gamebook in the D&D world and we are playing
      #   - You describe the environment and can create dialogue for the NPCs
      #   - Don't ever break out of your character, and you must not refer to yourself in any way
      #   - If I want to give you instructions outside the context of the game, I will use curly brackets {like this} but otherwise you are to stick to being the text adventure program
      #   - Be descriptive\n
      #   - Never explain yourself, do not enter commands on my behalf, do not control my actions
      #   - Always finish your paragraph by listing actions the player can do in an ordered list
      #   - The adventure start in a inn."]
      # Message.last(5).each do |message|
      #   messages << "#{message.role}: #{message.content}"
      # end

      # response = client.completions(
      #   parameters: {
      #     model: "text-davinci-003",
      #     prompt: messages.join,
      #     temperature: 0,
      #     max_tokens: 256,
      #     top_p: 1,
      #     frequency_penalty: 0,
      #     presence_penalty: 0,
      #     stop: ["user:", "assistant:"]
      #   }
      # )

      messages = [{ role: "system", content: @adventure.character.universe.initializer }]
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
      initializer.adventure = @adventure
      initializer.role = "assistant"
      initializer.content = response.dig("choices", 0, "message", "content")#response["choices"][0]["text"]
      initializer.save
    end

    @messages = @adventure.messages
    # @chat_history = session[:chat_history] || []

    # client = OpenAI::Client.new
    # response1 = client.chat(
    #   parameters: {
    #     model: "gpt-3.5-turbo", # Required.
    #     messages: [
    #       { role: "system", content: "You are a helpful assistant." },
    #       # { role: "assistant", content: "What is"},
    #       { role: "user", content: "what is star wars?" }
    #     ], # Required.
    #     temperature: 0.7,
    #     max_tokens: 5,
    #     user: current_user.api_token
    #   }
    # )
    # # @response1 = response1
    # @response1 = response1.dig("choices", 0, "message", "content")
    # @response1 = response1
    # response2 = client.chat(
    #   parameters: {
    #     model: "gpt-3.5-turbo", # Required.
    #     messages: response1.dig("choices", 0, "message"), # Required.
    #     temperature: 0.7,
    #     max_tokens: 500,
    #     user: current_user.api_token
    #   }
    # )
    # @response2 = response2.dig("choices", 0, "message", "content")
    # @response2 = response2
  end

  def new
    @adventure = Adventure.new
    @character = Character.find(params[:character_id])
  end

  def create
    @character = Character.find(params[:character_id])
    @adventure = Adventure.new(adventure_params)

    @adventure.character = @character
    @adventure.user = current_user

    if @adventure.save
      redirect_to adventure_path(@adventure)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    user_prompt = params[:user_message]
    session[:chat_history] ||= []

    session[:chat_history] << "You: #{user_prompt}"

    @adventure.update(adventure_params)
    redirect_to adventure_path(@adventure)
  end

  private

  def set_adventure
    @adventure = Adventure.find(params[:id])
  end

  def adventure_params
    params.require(:adventure).permit(:character_name, :difficulty, :choices, :save_adventure)
  end
end
