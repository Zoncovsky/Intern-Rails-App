require 'rails_helper'

RSpec.describe "Cards", type: :request do
  describe "GET /show" do
    it "returns http success" do
      get "/card/show"
      expect(response).to have_http_status(:success)
    end
  end

end
