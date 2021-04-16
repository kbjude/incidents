require "rails_helper"

RSpec.describe CausesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/causes").to route_to("causes#index")
    end

    it "routes to #new" do
      expect(get: "/causes/new").to route_to("causes#new")
    end

    it "routes to #show" do
      expect(get: "/causes/1").to route_to("causes#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/causes/1/edit").to route_to("causes#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/causes").to route_to("causes#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/causes/1").to route_to("causes#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/causes/1").to route_to("causes#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/causes/1").to route_to("causes#destroy", id: "1")
    end
  end
end
