describe DealershipsController, :type => :controller do

  # This should return the minimal set of attributes required to create a valid
  # Dealership. As you add validations to Dealership, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # DealershipsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all dealerships as @dealerships" do
      dealership = Dealership.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:dealerships)).to eq([dealership])
    end
  end

  describe "GET show" do
    it "assigns the requested dealership as @dealership" do
      dealership = Dealership.create! valid_attributes
      get :show, {:id => dealership.to_param}, valid_session
      expect(assigns(:dealership)).to eq(dealership)
    end
  end

  describe "GET new" do
    it "assigns a new dealership as @dealership" do
      get :new, {}, valid_session
      expect(assigns(:dealership)).to be_a_new(Dealership)
    end
  end

  describe "GET edit" do
    it "assigns the requested dealership as @dealership" do
      dealership = Dealership.create! valid_attributes
      get :edit, {:id => dealership.to_param}, valid_session
      expect(assigns(:dealership)).to eq(dealership)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Dealership" do
        expect {
          post :create, {:dealership => valid_attributes}, valid_session
        }.to change(Dealership, :count).by(1)
      end

      it "assigns a newly created dealership as @dealership" do
        post :create, {:dealership => valid_attributes}, valid_session
        expect(assigns(:dealership)).to be_a(Dealership)
        expect(assigns(:dealership)).to be_persisted
      end

      it "redirects to the created dealership" do
        post :create, {:dealership => valid_attributes}, valid_session
        expect(response).to redirect_to(Dealership.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved dealership as @dealership" do
        post :create, {:dealership => invalid_attributes}, valid_session
        expect(assigns(:dealership)).to be_a_new(Dealership)
      end

      it "re-renders the 'new' template" do
        post :create, {:dealership => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested dealership" do
        dealership = Dealership.create! valid_attributes
        put :update, {:id => dealership.to_param, :dealership => new_attributes}, valid_session
        dealership.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested dealership as @dealership" do
        dealership = Dealership.create! valid_attributes
        put :update, {:id => dealership.to_param, :dealership => valid_attributes}, valid_session
        expect(assigns(:dealership)).to eq(dealership)
      end

      it "redirects to the dealership" do
        dealership = Dealership.create! valid_attributes
        put :update, {:id => dealership.to_param, :dealership => valid_attributes}, valid_session
        expect(response).to redirect_to(dealership)
      end
    end

    describe "with invalid params" do
      it "assigns the dealership as @dealership" do
        dealership = Dealership.create! valid_attributes
        put :update, {:id => dealership.to_param, :dealership => invalid_attributes}, valid_session
        expect(assigns(:dealership)).to eq(dealership)
      end

      it "re-renders the 'edit' template" do
        dealership = Dealership.create! valid_attributes
        put :update, {:id => dealership.to_param, :dealership => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested dealership" do
      dealership = Dealership.create! valid_attributes
      expect {
        delete :destroy, {:id => dealership.to_param}, valid_session
      }.to change(Dealership, :count).by(-1)
    end

    it "redirects to the dealerships list" do
      dealership = Dealership.create! valid_attributes
      delete :destroy, {:id => dealership.to_param}, valid_session
      expect(response).to redirect_to(dealerships_url)
    end
  end

end
