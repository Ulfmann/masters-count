require "rails_helper"

RSpec.describe LegsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/legs").to route_to("legs#index")
    end

    it "routes to #new" do
      expect(:get => "/legs/new").to route_to("legs#new")
    end

    it "routes to #show" do
      expect(:get => "/legs/1").to route_to("legs#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/legs/1/edit").to route_to("legs#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/legs").to route_to("legs#create")
    end

    it "routes to #update" do
      expect(:put => "/legs/1").to route_to("legs#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/legs/1").to route_to("legs#destroy", :id => "1")
    end

  end
end
