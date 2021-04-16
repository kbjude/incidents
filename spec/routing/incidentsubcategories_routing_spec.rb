require "rails_helper"

RSpec.describe IncidentsubcategoriesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/incidentsubcategories").to route_to("incidentsubcategories#index")
    end

    it "routes to #new" do
      expect(get: "/incidentsubcategories/new").to route_to("incidentsubcategories#new")
    end

    it "routes to #show" do
      expect(get: "/incidentsubcategories/1").to route_to("incidentsubcategories#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/incidentsubcategories/1/edit").to route_to("incidentsubcategories#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/incidentsubcategories").to route_to("incidentsubcategories#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/incidentsubcategories/1").to route_to("incidentsubcategories#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/incidentsubcategories/1").to route_to("incidentsubcategories#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/incidentsubcategories/1").to route_to("incidentsubcategories#destroy", id: "1")
    end
  end
end
