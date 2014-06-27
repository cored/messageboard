require 'rails_helper' 

describe HomeController do 
  context 'GET /' do 
    it 'response with 200 for index'  do 
      get :index

      expect(response).to be_success
    end
  end
end
