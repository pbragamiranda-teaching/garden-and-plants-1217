class Plant < ApplicationRecord
  belongs_to :garden  # @plant.garden
  validates :name, :image_url, presence: true
end
