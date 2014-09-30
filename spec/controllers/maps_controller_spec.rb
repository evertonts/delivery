require 'rails_helper'

describe MapsController do
  describe 'POST #create' do
    context 'with valid parameters' do
      context 'with an error on the map' do
        it 'returns unprocessable entity status' do
          #post 'create/map'
          #expect(response).to have_http_status(:unprocessable_entity)
        end
      end
      
      context 'with a valid map' do
        it 'returns created status' do
          post :create, name: 'map', routes: 'A B 10'
          expect(response).to have_http_status(:created)
        end
      end
    end
  end
end