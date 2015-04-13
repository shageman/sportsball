require "slim-rails"
require "jquery-rails"

require "teams"
require "games"
require "web_style"

module TeamsUi
  require "teams_ui/engine"

  def self.nav_entry
    {name: "Teams", link: -> {::TeamsUi::Engine.routes.url_helpers.teams_path}}
  end
end
