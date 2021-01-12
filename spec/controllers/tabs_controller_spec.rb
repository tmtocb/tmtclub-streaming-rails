require 'rails_helper'

describe TabsController do 

  describe '#show' do
    it 'should return success http response' do
      get :show, id: 1
      expect(response).to have_http_status(:ok)
    end
  end
end