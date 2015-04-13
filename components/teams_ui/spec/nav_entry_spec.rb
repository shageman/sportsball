RSpec.describe "nav entry" do
  it "points at the list of games" do
    entry = TeamsUi.nav_entry
    expect(entry[:name]).to eq "Teams"
    expect(entry[:link].call).to eq "/teams_ui/teams"
  end
end