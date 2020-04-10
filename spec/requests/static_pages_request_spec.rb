require 'rails_helper'

RSpec.describe "StaticPages", type: :request do

  describe "GET /home" do
    it "returns http success" do
      get "/static_pages/home"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /profile" do
    it "returns http success" do
      get "/static_pages/profile"
      expect(response).to have_http_status(:success)
    end
  end

end
