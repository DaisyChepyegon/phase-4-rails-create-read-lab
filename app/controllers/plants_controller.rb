class PlantsController < ApplicationController
  wrap_parameters format: []

  def index
    render json: Plant.all
  end

  def show
    plants = Plant.find(params[:id])
    render json: plants
  end

  def create
    plants=Plant.create(plant_params)
    render json: plants, status: :created
  end

  private

  def plant_params
    params.permit(:name, :image, :price)
  end
end
