class PetSerializer < ApplicationSerializer
  attributes :id, :name, :sex, :description,
    :last_place, :user_id, :picture_url, :owner,
    :state, :specie, :latitude, :longitude
end
