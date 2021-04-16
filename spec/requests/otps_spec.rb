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

RSpec.describe "/otps", type: :request do
  # Otp. As you add validations to Otp, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      Otp.create! valid_attributes
      get otps_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      otp = Otp.create! valid_attributes
      get otp_url(otp)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_otp_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "render a successful response" do
      otp = Otp.create! valid_attributes
      get edit_otp_url(otp)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Otp" do
        expect {
          post otps_url, params: { otp: valid_attributes }
        }.to change(Otp, :count).by(1)
      end

      it "redirects to the created otp" do
        post otps_url, params: { otp: valid_attributes }
        expect(response).to redirect_to(otp_url(Otp.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Otp" do
        expect {
          post otps_url, params: { otp: invalid_attributes }
        }.to change(Otp, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post otps_url, params: { otp: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested otp" do
        otp = Otp.create! valid_attributes
        patch otp_url(otp), params: { otp: new_attributes }
        otp.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the otp" do
        otp = Otp.create! valid_attributes
        patch otp_url(otp), params: { otp: new_attributes }
        otp.reload
        expect(response).to redirect_to(otp_url(otp))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        otp = Otp.create! valid_attributes
        patch otp_url(otp), params: { otp: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested otp" do
      otp = Otp.create! valid_attributes
      expect {
        delete otp_url(otp)
      }.to change(Otp, :count).by(-1)
    end

    it "redirects to the otps list" do
      otp = Otp.create! valid_attributes
      delete otp_url(otp)
      expect(response).to redirect_to(otps_url)
    end
  end
end