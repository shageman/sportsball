RSpec.describe App::Predictor do
  before do
    @team1 = create_team name: "A"
    @team2 = create_team name: "B"

    @predictor = App::Predictor.new([@team1, @team2])
  end

  it "predicts teams that have won in the past to win in the future" do
    game = new_game first_team_id: @team1.id, second_team_id: @team2.id, winning_team: 1
    @predictor.learn([game])

    prediction = @predictor.predict(@team2, @team1)
    expect(prediction.winner).to eq @team1

    prediction = @predictor.predict(@team1, @team2)
    expect(prediction.winner).to eq @team1
  end

  it "changes predictions based on games learned" do
    game1 = new_game first_team_id: @team1.id, second_team_id: @team2.id, winning_team: 1
    game2 = new_game first_team_id: @team1.id, second_team_id: @team2.id, winning_team: 2
    game3 = new_game first_team_id: @team1.id, second_team_id: @team2.id, winning_team: 2
    @predictor.learn([game1, game2, game3])

    prediction = @predictor.predict(@team1, @team2)
    expect(prediction.winner).to eq @team2
  end

  it "behaves funny when teams are equally strong" do
    prediction = @predictor.predict(@team1, @team2)
    expect(prediction.first_team).to eq @team1
    expect(prediction.second_team).to eq @team2
    expect(prediction.winner).to eq @team2

    prediction = @predictor.predict(@team2, @team1)
    expect(prediction.first_team).to eq @team2
    expect(prediction.second_team).to eq @team1
    expect(prediction.winner).to eq @team1
  end
end
