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

RSpec.describe "/investigationequipments", type: :request do
  # Investigationequipment. As you add validations to Investigationequipment, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      Investigationequipment.create! valid_attributes
      get investigationequipments_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      investigationequipment = Investigationequipment.create! valid_attributes
      get investigationequipment_url(investigationequipment)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_investigationequipment_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "render a successful response" do
      investigationequipment = Investigationequipment.create! valid_attributes
      get edit_investigationequipment_url(investigationequipment)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Investigationequipment" do
        expect {
          post investigationequipments_url, params: { investigationequipment: valid_attributes }
        }.to change(Investigationequipment, :count).by(1)
      end

      it "redirects to the created investigationequipment" do
        post investigationequipments_url, params: { investigationequipment: valid_attributes }
        expect(response).to redirect_to(investigationequipment_url(Investigationequipment.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Investigationequipment" do
        expect {
          post investigationequipments_url, params: { investigationequipment: invalid_attributes }
        }.to change(Investigationequipment, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post investigationequipments_url, params: { investigationequipment: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested investigationequipment" do
        investigationequipment = Investigationequipment.create! valid_attributes
        patch investigationequipment_url(investigationequipment), params: { investigationequipment: new_attributes }
        investigationequipment.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the investigationequipment" do
        investigationequipment = Investigationequipment.create! valid_attributes
        patch investigationequipment_url(investigationequipment), params: { investigationequipment: new_attributes }
        investigationequipment.reload
        expect(response).to redirect_to(investigationequipment_url(investigationequipment))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        investigationequipment = Investigationequipment.create! valid_attributes
        patch investigationequipment_url(investigationequipment), params: { investigationequipment: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested investigationequipment" do
      investigationequipment = Investigationequipment.create! valid_attributes
      expect {
        delete investigationequipment_url(investigationequipment)
      }.to change(Investigationequipment, :count).by(-1)
    end

    it "redirects to the investigationequipments list" do
      investigationequipment = Investigationequipment.create! valid_attributes
      delete investigationequipment_url(investigationequipment)
      expect(response).to redirect_to(investigationequipments_url)
    end
  end
end
