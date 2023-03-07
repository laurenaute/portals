class AdventuresController < ApplicationController
  before_action :set_adventure, only: [:show, :edit, :update, :destroy]

  def index
    @adventures = Adventure.all
  end

  def show
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
