class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.references :league, index: true
      t.string :name

      t.timestamps null: false
    end
    add_foreign_key :teams, :leagues
  end
end
