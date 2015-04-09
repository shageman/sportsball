RSpec.describe "web_ui/games/show", :type => :view do
  before(:each) do
    @game = assign(:game, create_game(location: "Location"))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Location/)
  end
end
