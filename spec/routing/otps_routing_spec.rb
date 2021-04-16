require "rails_helper"

RSpec.describe OtpsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/otps").to route_to("otps#index")
    end

    it "routes to #new" do
      expect(get: "/otps/new").to route_to("otps#new")
    end

    it "routes to #show" do
      expect(get: "/otps/1").to route_to("otps#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/otps/1/edit").to route_to("otps#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/otps").to route_to("otps#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/otps/1").to route_to("otps#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/otps/1").to route_to("otps#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/otps/1").to route_to("otps#destroy", id: "1")
    end
  end
end
