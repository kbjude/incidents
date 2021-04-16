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

RSpec.describe "/injurylocations", type: :request do
  # Injurylocation. As you add validations to Injurylocation, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      Injurylocation.create! valid_attributes
      get injurylocations_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      injurylocation = Injurylocation.create! valid_attributes
      get injurylocation_url(injurylocation)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_injurylocation_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "render a successful response" do
      injurylocation = Injurylocation.create! valid_attributes
      get edit_injurylocation_url(injurylocation)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Injurylocation" do
        expect {
          post injurylocations_url, params: { injurylocation: valid_attributes }
        }.to change(Injurylocation, :count).by(1)
      end

      it "redirects to the created injurylocation" do
        post injurylocations_url, params: { injurylocation: valid_attributes }
        expect(response).to redirect_to(injurylocation_url(Injurylocation.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Injurylocation" do
        expect {
          post injurylocations_url, params: { injurylocation: invalid_attributes }
        }.to change(Injurylocation, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post injurylocations_url, params: { injurylocation: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested injurylocation" do
        injurylocation = Injurylocation.create! valid_attributes
        patch injurylocation_url(injurylocation), params: { injurylocation: new_attributes }
        injurylocation.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the injurylocation" do
        injurylocation = Injurylocation.create! valid_attributes
        patch injurylocation_url(injurylocation), params: { injurylocation: new_attributes }
        injurylocation.reload
        expect(response).to redirect_to(injurylocation_url(injurylocation))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        injurylocation = Injurylocation.create! valid_attributes
        patch injurylocation_url(injurylocation), params: { injurylocation: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested injurylocation" do
      injurylocation = Injurylocation.create! valid_attributes
      expect {
        delete injurylocation_url(injurylocation)
      }.to change(Injurylocation, :count).by(-1)
    end

    it "redirects to the injurylocations list" do
      injurylocation = Injurylocation.create! valid_attributes
      delete injurylocation_url(injurylocation)
      expect(response).to redirect_to(injurylocations_url)
    end
  end
end
