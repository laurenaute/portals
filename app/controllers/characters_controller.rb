class CharactersController < ApplicationController
  before_action :set_character, only: [:show, :edit, :update, :destroy]

  # def index
  #   @characters = Character.all
  # end

  def show
    @character = Character.find(params[:id])
  end

  def new
    @character = Character.new
  end

  def create
    @character = Character.new(character_params)
    @character.user = current_user
    if @character.save
      redirect_to character_path(@character)
    else
      render :new, :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @character.update(character_params)
      redirect_to character_path(@character)
    else
      render :edit, :unprocessable_entity
    end
  end

  private

  def set_character
    @character = Character.find(params[:id])
  end

  def character_params
    params.require(:character).permit(:name, :description, :parameters, :image_card_url, :image_background_card_url, :image_background_page_url, :universe_id, :strength, :dexterity, :constitution, :intelligence, :wisdom, :charisma)
  end
end
