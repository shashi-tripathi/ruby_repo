require 'rails_helper'

RSpec.describe "Finances", :type => :request do
  describe "GET /finances" do
    it "works! (now write some real specs)" do
      get finances_path
      expect(response).to have_http_status(200)
    end
  end
end
