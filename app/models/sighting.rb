class Sighting < ApplicationRecord
  belongs_to :bird
  belongs_to :location

  def show
    sighting = Sighting.find_by(id: params[:id])
    render json: { id: sighting.id, bird: sighting.bird, location: sighting.location }
  end 
  
end
