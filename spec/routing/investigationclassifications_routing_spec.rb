require "rails_helper"

RSpec.describe InvestigationclassificationsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/investigationclassifications").to route_to("investigationclassifications#index")
    end

    it "routes to #new" do
      expect(get: "/investigationclassifications/new").to route_to("investigationclassifications#new")
    end

    it "routes to #show" do
      expect(get: "/investigationclassifications/1").to route_to("investigationclassifications#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/investigationclassifications/1/edit").to route_to("investigationclassifications#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/investigationclassifications").to route_to("investigationclassifications#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/investigationclassifications/1").to route_to("investigationclassifications#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/investigationclassifications/1").to route_to("investigationclassifications#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/investigationclassifications/1").to route_to("investigationclassifications#destroy", id: "1")
    end
  end
end
