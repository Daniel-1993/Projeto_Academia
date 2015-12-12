require "rails_helper"

RSpec.describe QualificacaosController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/qualificacaos").to route_to("qualificacaos#index")
    end

    it "routes to #new" do
      expect(:get => "/qualificacaos/new").to route_to("qualificacaos#new")
    end

    it "routes to #show" do
      expect(:get => "/qualificacaos/1").to route_to("qualificacaos#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/qualificacaos/1/edit").to route_to("qualificacaos#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/qualificacaos").to route_to("qualificacaos#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/qualificacaos/1").to route_to("qualificacaos#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/qualificacaos/1").to route_to("qualificacaos#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/qualificacaos/1").to route_to("qualificacaos#destroy", :id => "1")
    end

  end
end
