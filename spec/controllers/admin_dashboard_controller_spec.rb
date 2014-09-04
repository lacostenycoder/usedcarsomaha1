# spec/controllers/admin_dashboard_controller_spec.rb
describe "GET #index" do
  context "visitor is admin" do
    # before(:all) do
    #   @admin = create(:admin)
    # end

    it 'should return 200 OK' do
      admin = create(:admin)
      sign_in admin

      get :index 
      response.should be_success
    end

    # it 'should show all models' do
    #   expect(page).to have_content("Site Administration")
    #   expect(page).to have_content("Vehicles")
    #   expect(page).to have_content("Users")
    # end
  end

  context "visitor is user" do
    # before(:all) do
    #   @user = create(:user)
    # end

    it 'should return 200 OK' do
      user = create(:user)
      sign_in user

      get :index 
      response.should be_success
    end

    # it 'should show all models' do
    #   expect(page).to have_content("Site Administration")
    #   expect(page).to have_content("Vehicles")
    #   expect(page).to have_content("Users")
    # end
  end
end
