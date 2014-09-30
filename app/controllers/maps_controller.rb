class MapsController < ApplicationController
  rescue_from ActionController::ParameterMissing, with: :parameters_missing
  
  def create
    routes = converter.convert(params.require(:routes))
    map = Map.new(routes: routes, name: params.require(:name))
    if map.valid?
      map.save
      head :created
    else
      render json: { message: 'cannot create a map', cause: map.errors }, status: :unprocessable_entity
    end
  end
  
  private
  
  def parameters_missing
    render json: { message: 'Invalid parameters' }, status: :bad_request
  end
  
  def converter
    @converter ||= RoutesConverter.instance
  end
end