RSpec.describe "games admin", :type => :feature do
  before :each do
    team1 = create_team name: "UofL"
    team2 = create_team name: "UK"

    create_game first_team: team1, second_team: team2, winning_team: 1
  end

  it "allows for the management of games" do
    visit '/games_ui/games'

    click_link "Games"

    expect(page).to have_content 'UofL'
  end
end