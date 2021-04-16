 require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/action_requireds", type: :request do
  # ActionRequired. As you add validations to ActionRequired, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      ActionRequired.create! valid_attributes
      get action_requireds_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      action_required = ActionRequired.create! valid_attributes
      get action_required_url(action_required)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_action_required_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "render a successful response" do
      action_required = ActionRequired.create! valid_attributes
      get edit_action_required_url(action_required)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new ActionRequired" do
        expect {
          post action_requireds_url, params: { action_required: valid_attributes }
        }.to change(ActionRequired, :count).by(1)
      end

      it "redirects to the created action_required" do
        post action_requireds_url, params: { action_required: valid_attributes }
        expect(response).to redirect_to(action_required_url(ActionRequired.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new ActionRequired" do
        expect {
          post action_requireds_url, params: { action_required: invalid_attributes }
        }.to change(ActionRequired, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post action_requireds_url, params: { action_required: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested action_required" do
        action_required = ActionRequired.create! valid_attributes
        patch action_required_url(action_required), params: { action_required: new_attributes }
        action_required.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the action_required" do
        action_required = ActionRequired.create! valid_attributes
        patch action_required_url(action_required), params: { action_required: new_attributes }
        action_required.reload
        expect(response).to redirect_to(action_required_url(action_required))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        action_required = ActionRequired.create! valid_attributes
        patch action_required_url(action_required), params: { action_required: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested action_required" do
      action_required = ActionRequired.create! valid_attributes
      expect {
        delete action_required_url(action_required)
      }.to change(ActionRequired, :count).by(-1)
    end

    it "redirects to the action_requireds list" do
      action_required = ActionRequired.create! valid_attributes
      delete action_required_url(action_required)
      expect(response).to redirect_to(action_requireds_url)
    end
  end
end