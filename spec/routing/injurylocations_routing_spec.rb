require "rails_helper"

RSpec.describe InjurylocationsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/injurylocations").to route_to("injurylocations#index")
    end

    it "routes to #new" do
      expect(get: "/injurylocations/new").to route_to("injurylocations#new")
    end

    it "routes to #show" do
      expect(get: "/injurylocations/1").to route_to("injurylocations#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/injurylocations/1/edit").to route_to("injurylocations#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/injurylocations").to route_to("injurylocations#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/injurylocations/1").to route_to("injurylocations#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/injurylocations/1").to route_to("injurylocations#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/injurylocations/1").to route_to("injurylocations#destroy", id: "1")
    end
  end
end
