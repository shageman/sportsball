RSpec.describe WebUi::WelcomesController, :type => :controller do
  routes { WebUi::Engine.routes }

  describe "GET index" do
    it "returns http success" do
      get :show
      expect(response).to have_http_status(:success)
    end
  end
end
