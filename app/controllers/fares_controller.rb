class FaresController < ApplicationController
  def index
    @fares = Fare.all
  end

  # GET /fares/1
  # GET /fares/1.json
  def show
  end
end
