require "rails_helper"

RSpec.describe ClassificationsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/classifications").to route_to("classifications#index")
    end

    it "routes to #new" do
      expect(get: "/classifications/new").to route_to("classifications#new")
    end

    it "routes to #show" do
      expect(get: "/classifications/1").to route_to("classifications#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/classifications/1/edit").to route_to("classifications#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/classifications").to route_to("classifications#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/classifications/1").to route_to("classifications#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/classifications/1").to route_to("classifications#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/classifications/1").to route_to("classifications#destroy", id: "1")
    end
  end
end
