require 'openai'

class AdventuresController < ApplicationController
  before_action :set_adventure, only: [:show, :edit, :update, :destroy]

  def index
    @adventures = Adventure.all
  end

  def show
    @message = Message.new
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
  end

  def create
    @adventure = Adventure.new(adventure_params)
    @adventure.character = Character.find(params[:character_id])
    @adventure.user = current_user
    if @adventure.save
      redirect_to adventure_path(@adventure)
    else
      render :new
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
