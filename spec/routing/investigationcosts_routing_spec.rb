require "rails_helper"

RSpec.describe InvestigationcostsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/investigationcosts").to route_to("investigationcosts#index")
    end

    it "routes to #new" do
      expect(get: "/investigationcosts/new").to route_to("investigationcosts#new")
    end

    it "routes to #show" do
      expect(get: "/investigationcosts/1").to route_to("investigationcosts#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/investigationcosts/1/edit").to route_to("investigationcosts#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/investigationcosts").to route_to("investigationcosts#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/investigationcosts/1").to route_to("investigationcosts#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/investigationcosts/1").to route_to("investigationcosts#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/investigationcosts/1").to route_to("investigationcosts#destroy", id: "1")
    end
  end
end
