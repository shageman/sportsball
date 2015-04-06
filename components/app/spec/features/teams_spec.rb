RSpec.describe "teams admin", :type => :feature do
  before :each do
    team1 = create_team name: "UofL"
    team2 = create_team name: "UK"
  end

  it "allows for the management of teams" do
    visit '/app/'

    click_link "Teams"

    expect(page).to have_content 'UofL'
  end
end