describe "Dealerships", :type => :request do
  describe "GET /dealerships" do
    it "returns 200 OK" do
      get dealerships_path
      expect(response.status).to be(200)
    end
  end
end
