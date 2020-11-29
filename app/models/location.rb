class Location < ApplicationRecord
    has_many :sightings
    has_many :birds, through: :sightings

    def show
        sighting = Sighting.find_by(id: params[:id])
        render json: { id: sighting.id, bird: sighting.bird, location: sighting.location }
      end 
end
