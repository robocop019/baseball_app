class RenamePlayerOnPitchingStats < ActiveRecord::Migration[6.0]
  def change
    rename_column :pitching_stats, :player, :player_id
  end
end
