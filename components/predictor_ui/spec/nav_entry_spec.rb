RSpec.describe "nav entry" do
  it "points at the list of games" do
    entry = PredictorUi.nav_entry
    expect(entry[:name]).to eq "Predictions"
    expect(entry[:link].call).to eq "/predictor_ui/prediction/new"
  end
end