require "rails_helper"

RSpec.describe InvestigationcausesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/investigationcauses").to route_to("investigationcauses#index")
    end

    it "routes to #new" do
      expect(get: "/investigationcauses/new").to route_to("investigationcauses#new")
    end

    it "routes to #show" do
      expect(get: "/investigationcauses/1").to route_to("investigationcauses#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/investigationcauses/1/edit").to route_to("investigationcauses#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/investigationcauses").to route_to("investigationcauses#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/investigationcauses/1").to route_to("investigationcauses#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/investigationcauses/1").to route_to("investigationcauses#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/investigationcauses/1").to route_to("investigationcauses#destroy", id: "1")
    end
  end
end
