module Api
  module V1
    class PetsController < ApplicationController
      def create
      end

      def index
        render json: Pet.all, each_serializer: PetSerializer
      end
    end
  end
end

