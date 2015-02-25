RSpec.describe "Engine 'App'", :type => :feature do
  it "hooks up to /" do
    visit "/"
    within "main h1" do
      expect(page).to have_content 'Sportsball'
    end
  end
end