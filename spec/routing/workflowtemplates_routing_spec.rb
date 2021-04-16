require "rails_helper"

RSpec.describe WorkflowtemplatesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/workflowtemplates").to route_to("workflowtemplates#index")
    end

    it "routes to #new" do
      expect(get: "/workflowtemplates/new").to route_to("workflowtemplates#new")
    end

    it "routes to #show" do
      expect(get: "/workflowtemplates/1").to route_to("workflowtemplates#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/workflowtemplates/1/edit").to route_to("workflowtemplates#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/workflowtemplates").to route_to("workflowtemplates#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/workflowtemplates/1").to route_to("workflowtemplates#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/workflowtemplates/1").to route_to("workflowtemplates#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/workflowtemplates/1").to route_to("workflowtemplates#destroy", id: "1")
    end
  end
end
