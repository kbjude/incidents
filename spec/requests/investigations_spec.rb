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

RSpec.describe "/investigations", type: :request do
  # Investigation. As you add validations to Investigation, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      Investigation.create! valid_attributes
      get investigations_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      investigation = Investigation.create! valid_attributes
      get investigation_url(investigation)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_investigation_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "render a successful response" do
      investigation = Investigation.create! valid_attributes
      get edit_investigation_url(investigation)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Investigation" do
        expect {
          post investigations_url, params: { investigation: valid_attributes }
        }.to change(Investigation, :count).by(1)
      end

      it "redirects to the created investigation" do
        post investigations_url, params: { investigation: valid_attributes }
        expect(response).to redirect_to(investigation_url(Investigation.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Investigation" do
        expect {
          post investigations_url, params: { investigation: invalid_attributes }
        }.to change(Investigation, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post investigations_url, params: { investigation: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested investigation" do
        investigation = Investigation.create! valid_attributes
        patch investigation_url(investigation), params: { investigation: new_attributes }
        investigation.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the investigation" do
        investigation = Investigation.create! valid_attributes
        patch investigation_url(investigation), params: { investigation: new_attributes }
        investigation.reload
        expect(response).to redirect_to(investigation_url(investigation))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        investigation = Investigation.create! valid_attributes
        patch investigation_url(investigation), params: { investigation: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested investigation" do
      investigation = Investigation.create! valid_attributes
      expect {
        delete investigation_url(investigation)
      }.to change(Investigation, :count).by(-1)
    end

    it "redirects to the investigations list" do
      investigation = Investigation.create! valid_attributes
      delete investigation_url(investigation)
      expect(response).to redirect_to(investigations_url)
    end
  end
end