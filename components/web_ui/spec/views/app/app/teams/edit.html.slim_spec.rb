RSpec.describe "web_ui/teams/edit", :type => :view do
  before(:each) do
    @team = assign(:team, Teams::Team.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit team form" do
    render

    assert_select "form[action=?][method=?]", web_ui.team_path(@team), "post" do

      assert_select "input#team_name[name=?]", "team[name]"
    end
  end
end
