require "slim-rails"
require "jquery-rails"

require "games"
require "web_style"

module GamesUi
  require "games_ui/engine"

  def self.nav_entry
    {name: "Games", link: -> {::GamesUi::Engine.routes.url_helpers.games_path}}
  end
end
