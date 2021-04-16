require "rails_helper"

RSpec.describe InvestigationsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/investigations").to route_to("investigations#index")
    end

    it "routes to #new" do
      expect(get: "/investigations/new").to route_to("investigations#new")
    end

    it "routes to #show" do
      expect(get: "/investigations/1").to route_to("investigations#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/investigations/1/edit").to route_to("investigations#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/investigations").to route_to("investigations#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/investigations/1").to route_to("investigations#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/investigations/1").to route_to("investigations#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/investigations/1").to route_to("investigations#destroy", id: "1")
    end
  end
end
