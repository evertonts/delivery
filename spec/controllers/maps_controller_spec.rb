require 'rails_helper'

describe MapsController do
  describe 'POST #create' do
    context 'with a name' do
    end
    
    context 'without a map on parameters' do
      it 'returns bad request status' do
        post :create, {}
        expect(response).to have_http_status(:bad_request)
      end
    end
    
    context 'with a map on parameters' do
      context 'with an error on the map' do
        it 'returns unprocessable entity status' do
          post :create, { map: { routes: [] } }
          expect(response).to have_http_status(:unprocessable_entity)
        end
      end
      
      context 'with a valid map' do
        it 'returns created status' do
          post :create, { map: { name: 'map', routes: [] } }
          expect(response).to have_http_status(:created)
        end
      end
    end
  end
end