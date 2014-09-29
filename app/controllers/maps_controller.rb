class MapsController < ApplicationController
  rescue_from ActionController::ParameterMissing, with: :parameters_missing
  
  def create
    map = Map.new(map_params)
    if map.valid?
      map.save
      head :created
    else
      render json: { message: 'cannot create a map', cause: map.errors }, status: :unprocessable_entity
    end
  end
  
  private
  
  def map_params
    params.require(:map).permit(:name, routes: [])
  end
  
  def parameters_missing
    render json: { message: 'Invalid parameters' }, status: :bad_request
  end
end