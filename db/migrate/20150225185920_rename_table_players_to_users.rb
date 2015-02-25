class RenameTablePlayersToUsers < ActiveRecord::Migration
  def change
    rename_table :players, :users
  end
end
