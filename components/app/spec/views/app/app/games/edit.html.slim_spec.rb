RSpec.describe "app/games/edit", :type => :view do
  before(:each) do
    @game = assign(:game, create_game)
  end

  it "renders the edit game form" do
    render

    assert_select "form[action=?][method=?]", app.game_path(@game), "post" do

      assert_select "input#game_location[name=?]", "game[location]"

      assert_select "input#game_first_team_id[name=?]", "game[first_team_id]"

      assert_select "input#game_second_team_id[name=?]", "game[second_team_id]"

      assert_select "input#game_winning_team[name=?]", "game[winning_team]"

      assert_select "input#game_first_team_score[name=?]", "game[first_team_score]"

      assert_select "input#game_second_team_score[name=?]", "game[second_team_score]"
    end
  end
end
