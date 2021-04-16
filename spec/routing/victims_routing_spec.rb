require "rails_helper"

RSpec.describe VictimsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/victims").to route_to("victims#index")
    end

    it "routes to #new" do
      expect(get: "/victims/new").to route_to("victims#new")
    end

    it "routes to #show" do
      expect(get: "/victims/1").to route_to("victims#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/victims/1/edit").to route_to("victims#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/victims").to route_to("victims#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/victims/1").to route_to("victims#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/victims/1").to route_to("victims#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/victims/1").to route_to("victims#destroy", id: "1")
    end
  end
end
