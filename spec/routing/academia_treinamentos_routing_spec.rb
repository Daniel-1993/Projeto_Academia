require "rails_helper"

RSpec.describe AcademiaTreinamentosController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/academia_treinamentos").to route_to("academia_treinamentos#index")
    end

    it "routes to #new" do
      expect(:get => "/academia_treinamentos/new").to route_to("academia_treinamentos#new")
    end

    it "routes to #show" do
      expect(:get => "/academia_treinamentos/1").to route_to("academia_treinamentos#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/academia_treinamentos/1/edit").to route_to("academia_treinamentos#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/academia_treinamentos").to route_to("academia_treinamentos#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/academia_treinamentos/1").to route_to("academia_treinamentos#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/academia_treinamentos/1").to route_to("academia_treinamentos#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/academia_treinamentos/1").to route_to("academia_treinamentos#destroy", :id => "1")
    end

  end
end
