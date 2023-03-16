class PlantTag < ApplicationRecord
  belongs_to :plant # @plant_tag.plant
  belongs_to :tag # @plant_tag.tag
  validates :tag, uniqueness: { scope: :plant, message: "deja fait"}
end
