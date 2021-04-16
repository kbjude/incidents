require 'rails_helper'

RSpec.describe "Privacies", type: :request do

  describe "GET /index" do
    it "returns http success" do
      get "/privacy/index"
      expect(response).to have_http_status(:success)
    end
  end

end
