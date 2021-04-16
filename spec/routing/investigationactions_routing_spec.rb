require "rails_helper"

RSpec.describe InvestigationactionsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/investigationactions").to route_to("investigationactions#index")
    end

    it "routes to #new" do
      expect(get: "/investigationactions/new").to route_to("investigationactions#new")
    end

    it "routes to #show" do
      expect(get: "/investigationactions/1").to route_to("investigationactions#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/investigationactions/1/edit").to route_to("investigationactions#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/investigationactions").to route_to("investigationactions#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/investigationactions/1").to route_to("investigationactions#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/investigationactions/1").to route_to("investigationactions#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/investigationactions/1").to route_to("investigationactions#destroy", id: "1")
    end
  end
end
