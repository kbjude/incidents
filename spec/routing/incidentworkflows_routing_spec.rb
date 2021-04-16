require "rails_helper"

RSpec.describe IncidentworkflowsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/incidentworkflows").to route_to("incidentworkflows#index")
    end

    it "routes to #new" do
      expect(get: "/incidentworkflows/new").to route_to("incidentworkflows#new")
    end

    it "routes to #show" do
      expect(get: "/incidentworkflows/1").to route_to("incidentworkflows#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/incidentworkflows/1/edit").to route_to("incidentworkflows#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/incidentworkflows").to route_to("incidentworkflows#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/incidentworkflows/1").to route_to("incidentworkflows#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/incidentworkflows/1").to route_to("incidentworkflows#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/incidentworkflows/1").to route_to("incidentworkflows#destroy", id: "1")
    end
  end
end
