require 'openai'

class AdventuresController < ApplicationController
  before_action :set_adventure, only: [:show, :edit, :update, :destroy]

  def index
    @adventures = Adventure.all
  end

  def show
    @message_new = Message.new

    if @adventure.messages.last.nil?
      initializer = Message.new
      initializer.adventure = @adventure
      initializer.role = "system"

      client = OpenAI::Client.new

      content = @adventure.character.universe.initializer +
              "- The player character name is : " + @adventure.character_name +
              ( @adventure.choices ? Prompt.find_by(name: "choices").content : "" ) +
              ( @adventure.difficulty == "Facile" ? Prompt.find_by(name: "difficulty-easy").content : "" ) +
              ( @adventure.difficulty == "Difficile" ? Prompt.find_by(name: "difficulty-hard").content : "" )

      messages = [{ role: "system", content: content }]
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
      initializer.log = response
      initializer.adventure = @adventure
      initializer.role = "assistant"
      initializer.user = current_user
      initializer.content = response.dig("choices", 0, "message", "content")#response["choices"][0]["text"]
      initializer.save

    end

    @messages = @adventure.messages
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

  # def edit
    #   @character = Character.find(params[:character_id])
  # end

  # def update
    # if @adventure.update(adventure_params)
    #   redirect_to adventure_path(@adventure)
    # else
    #   render :edit, status: :unprocessable_entity
    # end
  # end

  private

  def set_adventure
    @adventure = Adventure.find(params[:id])
  end

  def adventure_params
    params.require(:adventure).permit(:character_name, :difficulty, :choices, :save_adventure)
  end
end
