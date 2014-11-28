class ShapesController < ApplicationController
  before_action :set_shape, only: [:show, :edit, :update, :destroy]

  # GET /shapes
  # GET /shapes.json
  def index
    @shapes = Shape.all
  end

  # GET /shapes/1
  # GET /shapes/1.json
  def show
  end
end
