RSpec.describe "nav entry" do
  it "points at the list of games" do
    entry = GamesUi.nav_entry
    expect(entry[:name]).to eq "Games"
    expect(entry[:link].call).to eq "/games_ui/games"
  end
end