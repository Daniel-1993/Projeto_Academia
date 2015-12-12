require "rails_helper"

RSpec.describe ModalidadesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/modalidades").to route_to("modalidades#index")
    end

    it "routes to #new" do
      expect(:get => "/modalidades/new").to route_to("modalidades#new")
    end

    it "routes to #show" do
      expect(:get => "/modalidades/1").to route_to("modalidades#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/modalidades/1/edit").to route_to("modalidades#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/modalidades").to route_to("modalidades#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/modalidades/1").to route_to("modalidades#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/modalidades/1").to route_to("modalidades#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/modalidades/1").to route_to("modalidades#destroy", :id => "1")
    end

  end
end
