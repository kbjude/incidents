require "rails_helper"

RSpec.describe InjurytypesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/injurytypes").to route_to("injurytypes#index")
    end

    it "routes to #new" do
      expect(get: "/injurytypes/new").to route_to("injurytypes#new")
    end

    it "routes to #show" do
      expect(get: "/injurytypes/1").to route_to("injurytypes#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/injurytypes/1/edit").to route_to("injurytypes#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/injurytypes").to route_to("injurytypes#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/injurytypes/1").to route_to("injurytypes#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/injurytypes/1").to route_to("injurytypes#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/injurytypes/1").to route_to("injurytypes#destroy", id: "1")
    end
  end
end
