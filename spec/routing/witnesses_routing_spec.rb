require "rails_helper"

RSpec.describe WitnessesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/witnesses").to route_to("witnesses#index")
    end

    it "routes to #new" do
      expect(get: "/witnesses/new").to route_to("witnesses#new")
    end

    it "routes to #show" do
      expect(get: "/witnesses/1").to route_to("witnesses#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/witnesses/1/edit").to route_to("witnesses#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/witnesses").to route_to("witnesses#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/witnesses/1").to route_to("witnesses#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/witnesses/1").to route_to("witnesses#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/witnesses/1").to route_to("witnesses#destroy", id: "1")
    end
  end
end
