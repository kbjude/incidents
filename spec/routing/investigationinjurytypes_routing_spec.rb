require "rails_helper"

RSpec.describe InvestigationinjurytypesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/investigationinjurytypes").to route_to("investigationinjurytypes#index")
    end

    it "routes to #new" do
      expect(get: "/investigationinjurytypes/new").to route_to("investigationinjurytypes#new")
    end

    it "routes to #show" do
      expect(get: "/investigationinjurytypes/1").to route_to("investigationinjurytypes#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/investigationinjurytypes/1/edit").to route_to("investigationinjurytypes#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/investigationinjurytypes").to route_to("investigationinjurytypes#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/investigationinjurytypes/1").to route_to("investigationinjurytypes#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/investigationinjurytypes/1").to route_to("investigationinjurytypes#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/investigationinjurytypes/1").to route_to("investigationinjurytypes#destroy", id: "1")
    end
  end
end
