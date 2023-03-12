class UniversesController < ApplicationController
  before_action :set_universe, only: [:show, :edit, :update, :destroy]

  def index
    @universes = Universe.all
  end

  def show
  end

  def new
    @universe = Universe.new
  end

  def create
    @universe = Universe.new(universe_params)
    @universe.user = current_user
    if @universe.save
      redirect_to universe_path(@universe)
    else
      render :new, :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @universe.update(universe_params)
      redirect_to universe_path(@universe)
    else
      render :edit, :unprocessable_entity
    end
  end

  private

  def set_universe
    @universe = Universe.find(params[:id])
  end

  def universe_params
    params.require(:universe).permit(:theme, :description, :parameters, :initializer, :image_card_url, :image_background_url)
  end
end
