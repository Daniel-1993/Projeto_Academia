require 'rails_helper'

RSpec.describe "Qualificacaos", type: :request do
  describe "GET /qualificacaos" do
    it "works! (now write some real specs)" do
      get qualificacaos_path
      expect(response).to have_http_status(200)
    end
  end
end
