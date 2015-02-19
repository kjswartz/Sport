class CreateLeagues < ActiveRecord::Migration
  def change
    create_table :leagues do |t|
      t.string :name
      t.string :skill

      t.timestamps null: false
    end
  end
end
