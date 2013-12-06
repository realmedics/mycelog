require "spec_helper"

describe MycesController do
  describe "routing" do

    it "routes to #index" do
      get("/myces").should route_to("myces#index")
    end

    it "routes to #new" do
      get("/myces/new").should route_to("myces#new")
    end

    it "routes to #show" do
      get("/myces/1").should route_to("myces#show", :id => "1")
    end

    it "routes to #edit" do
      get("/myces/1/edit").should route_to("myces#edit", :id => "1")
    end

    it "routes to #create" do
      post("/myces").should route_to("myces#create")
    end

    it "routes to #update" do
      put("/myces/1").should route_to("myces#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/myces/1").should route_to("myces#destroy", :id => "1")
    end

  end
end
