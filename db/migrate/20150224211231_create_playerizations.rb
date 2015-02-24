class CreatePlayerizations < ActiveRecord::Migration
  def change
    create_table :playerizations do |t|
      t.references :team, index: true
      t.references :player, index: true

      t.timestamps null: false
    end
    add_foreign_key :playerizations, :teams
    add_foreign_key :playerizations, :players
  end
end
