class RemoveReferenceFromPlayers < ActiveRecord::Migration
  def change
    remove_reference :players, :team, index: true
  end
end
