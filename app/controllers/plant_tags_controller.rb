class PlantTagsController < ApplicationController
  def new
    @plant = Plant.find(params[:plant_id])
    @plant_tag = PlantTag.new
  end

  def create
    @plant = Plant.find(params[:plant_id])
    @tag = Tag.find(params[:plant_tag][:tag_id])
    @plant_tag = PlantTag.new(plant: @plant, tag: @tag) #  PlantTag.new(plant_id: @plant.id, tag_id: @tag.id)
    if @plant_tag.save
      redirect_to garden_path(@plant.garden) # nouvelle requete, nouvelle action
    else
      render :new, status: :unprocessable_entity # rester dans la create mais montrer le form
    end
  end
end
