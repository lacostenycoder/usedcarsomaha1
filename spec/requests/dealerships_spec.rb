require 'rails_helper'

RSpec.describe "Dealerships", :type => :request do
  describe "GET /dealerships" do
    it "works! (now write some real specs)" do
      get dealerships_path
      expect(response.status).to be(200)
    end
  end
end
