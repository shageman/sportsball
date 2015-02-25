RSpec.describe App::GamesController, :type => :routing do
    routes { App::Engine.routes }

    it "routes to #index" do
      expect(:get => "/games").to route_to("app/games#index")
    end

    it "routes to #new" do
      expect(:get => "/games/new").to route_to("app/games#new")
    end

    it "routes to #show" do
      expect(:get => "/games/1").to route_to("app/games#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/games/1/edit").to route_to("app/games#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/games").to route_to("app/games#create")
    end

    it "routes to #update" do
      expect(:put => "/games/1").to route_to("app/games#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/games/1").to route_to("app/games#destroy", :id => "1")
    end
end
