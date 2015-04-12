RSpec.describe "teams_ui/teams/index", :type => :view do
  before(:each) do
    assign(:teams, [
                     Teams::Team.create!(
                         :name => "Name"
                     ),
                     Teams::Team.create!(
                         :name => "Name"
                     )
                 ])
  end

  it "renders a list of teams" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
