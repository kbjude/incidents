require "rails_helper"

RSpec.describe SubclassificationsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/subclassifications").to route_to("subclassifications#index")
    end

    it "routes to #new" do
      expect(get: "/subclassifications/new").to route_to("subclassifications#new")
    end

    it "routes to #show" do
      expect(get: "/subclassifications/1").to route_to("subclassifications#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/subclassifications/1/edit").to route_to("subclassifications#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/subclassifications").to route_to("subclassifications#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/subclassifications/1").to route_to("subclassifications#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/subclassifications/1").to route_to("subclassifications#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/subclassifications/1").to route_to("subclassifications#destroy", id: "1")
    end
  end
end
