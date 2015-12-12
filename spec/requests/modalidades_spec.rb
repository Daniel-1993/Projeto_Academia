require 'rails_helper'

RSpec.describe "Modalidades", type: :request do
  describe "GET /modalidades" do
    it "works! (now write some real specs)" do
      get modalidades_path
      expect(response).to have_http_status(200)
    end
  end
end
