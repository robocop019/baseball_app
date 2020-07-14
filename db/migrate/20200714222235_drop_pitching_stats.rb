class DropPitchingStats < ActiveRecord::Migration[6.0]
  def change
    drop_table :pitching_stats
  end
end
