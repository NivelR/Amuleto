class LostController < ApplicationController
  #before_action :authenticate_user! , except: [ :index , :about , :contact ]

  # GET /lost/new
  def new
    binding.pry
  end
end