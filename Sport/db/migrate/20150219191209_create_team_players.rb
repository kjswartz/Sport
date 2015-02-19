class CreateTeamPlayers < ActiveRecord::Migration
  def change
    create_table :team_players do |t|
      t.references :player, index: true
      t.references :team, index: true

      t.timestamps null: false
    end
    add_foreign_key :team_players, :players
    add_foreign_key :team_players, :teams
  end
end
