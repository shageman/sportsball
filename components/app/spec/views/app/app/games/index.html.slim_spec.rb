RSpec.describe "app/games/index", :type => :view do
  before(:each) do
    assign(:games, [create_game(location: "Location"), create_game(location: "Location")])
  end

  it "renders a list of games" do
    render
    assert_select "tr>td", :text => "Location".to_s, :count => 2
  end
end
