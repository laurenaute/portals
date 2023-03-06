class UniversesController < ApplicationController
  def index
    @universes = Universe.all
  end

  def show
    @universe = Universe.find(params[:id])
  end
end
