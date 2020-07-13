class RenamePlayerColumnonHittingStats < ActiveRecord::Migration[6.0]

  def change
    rename_column :hitting_stats, :player, :player_id
  end
end
