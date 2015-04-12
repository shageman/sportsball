RSpec.describe "games_ui/games/new", :type => :view do
  before(:each) do
    assign(:game, Games::Game.new(
      :location => "MyString",
      :first_team_id => 1,
      :second_team_id => 1,
      :winning_team => 1,
      :first_team_score => 1,
      :second_team_score => 1
    ))
  end

  it "renders new game form" do
    render

    assert_select "form[action=?][method=?]", games_ui.games_path, "post" do

      assert_select "input#game_location[name=?]", "game[location]"

      assert_select "input#game_first_team_id[name=?]", "game[first_team_id]"

      assert_select "input#game_second_team_id[name=?]", "game[second_team_id]"

      assert_select "input#game_winning_team[name=?]", "game[winning_team]"

      assert_select "input#game_first_team_score[name=?]", "game[first_team_score]"

      assert_select "input#game_second_team_score[name=?]", "game[second_team_score]"
    end
  end
end
