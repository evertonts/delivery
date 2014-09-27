class RoutesController < ApplicationController
  def create  
  end
  
  def create_list
  end
  
  private
  
  def routes_params
    params.require(map: [])
  end
end