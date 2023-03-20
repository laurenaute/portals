class UniversesController < ApplicationController
  before_action :set_universe, only: [:show, :edit, :update, :destroy]

  def index
    @universes = policy_scope(Universe)
  end

  def show
    authorize @universe
  end

  def new
    @universe = Universe.new
    authorize @universe
  end

  def create
    @universe = Universe.new(universe_params)
    @universe.user = current_user
    authorize @universe
    if @universe.save
      redirect_to universe_path(@universe)
    else
      render :new, :unprocessable_entity
    end
  end

  def edit
    authorize @universe
  end

  def update
    authorize @universe
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
