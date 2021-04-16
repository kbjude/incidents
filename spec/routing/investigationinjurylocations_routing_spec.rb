require "rails_helper"

RSpec.describe InvestigationinjurylocationsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/investigationinjurylocations").to route_to("investigationinjurylocations#index")
    end

    it "routes to #new" do
      expect(get: "/investigationinjurylocations/new").to route_to("investigationinjurylocations#new")
    end

    it "routes to #show" do
      expect(get: "/investigationinjurylocations/1").to route_to("investigationinjurylocations#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/investigationinjurylocations/1/edit").to route_to("investigationinjurylocations#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/investigationinjurylocations").to route_to("investigationinjurylocations#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/investigationinjurylocations/1").to route_to("investigationinjurylocations#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/investigationinjurylocations/1").to route_to("investigationinjurylocations#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/investigationinjurylocations/1").to route_to("investigationinjurylocations#destroy", id: "1")
    end
  end
end
