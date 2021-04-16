require "rails_helper"

RSpec.describe ActionRequiredsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/action_requireds").to route_to("action_requireds#index")
    end

    it "routes to #new" do
      expect(get: "/action_requireds/new").to route_to("action_requireds#new")
    end

    it "routes to #show" do
      expect(get: "/action_requireds/1").to route_to("action_requireds#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/action_requireds/1/edit").to route_to("action_requireds#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/action_requireds").to route_to("action_requireds#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/action_requireds/1").to route_to("action_requireds#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/action_requireds/1").to route_to("action_requireds#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/action_requireds/1").to route_to("action_requireds#destroy", id: "1")
    end
  end
end
