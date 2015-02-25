class CreateAppTeams < ActiveRecord::Migration
  def change
    create_table :app_teams do |t|
      t.string :name

      t.timestamps
    end
  end
end
