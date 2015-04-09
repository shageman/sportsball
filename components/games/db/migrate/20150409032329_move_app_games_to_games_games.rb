class MoveAppGamesToGamesGames < ActiveRecord::Migration
  def change
    rename_table :app_games, :games_games
  end
end
