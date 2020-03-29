require "rails_helper"

RSpec.describe ProjectProfilesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/project_profiles").to route_to("project_profiles#index")
    end

    it "routes to #new" do
      expect(get: "/project_profiles/new").to route_to("project_profiles#new")
    end

    it "routes to #show" do
      expect(get: "/project_profiles/1").to route_to("project_profiles#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/project_profiles/1/edit").to route_to("project_profiles#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/project_profiles").to route_to("project_profiles#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/project_profiles/1").to route_to("project_profiles#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/project_profiles/1").to route_to("project_profiles#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/project_profiles/1").to route_to("project_profiles#destroy", id: "1")
    end
  end
end
