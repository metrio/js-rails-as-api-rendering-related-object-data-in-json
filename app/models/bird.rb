class Bird < ApplicationRecord
    has_many :sightings
    has_many :locations, through: :sightings

    def show
        sighting = Sighting.find_by(id: params[:id])
        render json: { id: sighting.id, bird: sighting.bird, location: sighting.location }
      end 
end