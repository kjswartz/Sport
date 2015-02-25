class RenameColumnInPlayerizationFromPlayerIdToUserId < ActiveRecord::Migration
  def change
    rename_column :playerizations, :player_id, :user_id
  end
end
