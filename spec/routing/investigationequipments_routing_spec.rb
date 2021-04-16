require "rails_helper"

RSpec.describe InvestigationequipmentsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/investigationequipments").to route_to("investigationequipments#index")
    end

    it "routes to #new" do
      expect(get: "/investigationequipments/new").to route_to("investigationequipments#new")
    end

    it "routes to #show" do
      expect(get: "/investigationequipments/1").to route_to("investigationequipments#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/investigationequipments/1/edit").to route_to("investigationequipments#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/investigationequipments").to route_to("investigationequipments#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/investigationequipments/1").to route_to("investigationequipments#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/investigationequipments/1").to route_to("investigationequipments#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/investigationequipments/1").to route_to("investigationequipments#destroy", id: "1")
    end
  end
end
