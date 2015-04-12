RSpec.describe TeamsUi::TeamsController, :type => :controller do
  routes { TeamsUi::Engine.routes }

  let(:valid_attributes) { new_team.as_json }
  let(:invalid_attributes) { new_team.tap { |g| g.name = nil }.as_json }
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all teams as @teams" do
      team = create_team
      get :index, {}, valid_session
      expect(assigns(:teams)).to eq([team])
    end
  end

  describe "GET new" do
    it "assigns a new team as @team" do
      get :new, {}, valid_session
      expect(assigns(:team)).to be_a_new(Teams::Team)
    end
  end

  describe "GET edit" do
    it "assigns the requested team as @team" do
      team = create_team
      get :edit, {:id => team.to_param}, valid_session
      expect(assigns(:team)).to eq(team)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Teams::Team" do
        expect {
          post :create, {:team => valid_attributes}, valid_session
        }.to change(Teams::Team, :count).by(1)
      end

      it "assigns a newly created team as @team" do
        post :create, {:team => valid_attributes}, valid_session
        expect(assigns(:team)).to be_a(Teams::Team)
        expect(assigns(:team)).to be_persisted
      end

      it "redirects to the index" do
        post :create, {:team => valid_attributes}, valid_session
        expect(response).to redirect_to(teams_path)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved team as @team" do
        post :create, {:team => invalid_attributes}, valid_session
        expect(assigns(:team)).to be_a_new(Teams::Team)
      end

      it "re-renders the 'new' template" do
        post :create, {:team => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      let(:new_attributes) {
        {name: "new team name"}
      }

      it "updates the requested team" do
        team = create_team
        put :update, {:id => team.to_param, :team => new_attributes}, valid_session
        team.reload
        expect(assigns(:team).name).to eq("new team name")
      end

      it "assigns the requested team as @team" do
        team = create_team
        put :update, {:id => team.to_param, :team => valid_attributes}, valid_session
        expect(assigns(:team)).to eq(team)
      end

      it "redirects to the index" do
        team = create_team
        put :update, {:id => team.to_param, :team => valid_attributes}, valid_session
        expect(response).to redirect_to(teams_path)
      end
    end

    describe "with invalid params" do
      it "assigns the team as @team" do
        team = create_team
        put :update, {:id => team.to_param, :team => invalid_attributes}, valid_session
        expect(assigns(:team)).to eq(team)
      end

      it "re-renders the 'edit' template" do
        team = create_team
        put :update, {:id => team.to_param, :team => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested team" do
      team = create_team
      expect {
        delete :destroy, {:id => team.to_param}, valid_session
      }.to change(Teams::Team, :count).by(-1)
    end

    it "redirects to the teams list" do
      team = create_team
      delete :destroy, {:id => team.to_param}, valid_session
      expect(response).to redirect_to(teams_url)
    end
  end
end
