class DropHittingStats < ActiveRecord::Migration[6.0]
  def change
    drop_table :hitting_stats
  end
end
