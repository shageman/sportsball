RSpec.describe "app/teams/index", :type => :view do
  before(:each) do
    assign(:teams, [
                     App::Team.create!(
                         :name => "Name"
                     ),
                     App::Team.create!(
                         :name => "Name"
                     )
                 ])
  end

  it "renders a list of teams" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
