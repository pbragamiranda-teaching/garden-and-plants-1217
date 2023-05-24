class PlantsController < ApplicationController

  def create
    @plant = Plant.new(plant_params)
    @garden = Garden.find(params[:garden_id])
    @plant.garden = @garden

    # tries to save
    if @plant.save
      # if saved correctly, redirects somewhere
      redirect_to garden_path(@garden)
    else
      # else, render the form with the erros
      render "gardens/show", status: :unprocessable_entity
    end
  end

  def destroy
    @plant = Plant.find(params[:id])
    @plant.destroy
    redirect_to garden_path(@plant.garden), notice: "Plant was successfully destroyed."
  end

  private

  def plant_params
    params.require(:plant).permit(:name, :image_url)
  end
end
