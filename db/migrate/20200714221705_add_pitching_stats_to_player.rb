class AddPitchingStatsToPlayer < ActiveRecord::Migration[6.0]
  def change
    add_column :players, :appearances, :integer
    add_column :players, :starts, :integer
    add_column :players, :wins, :integer
    add_column :players, :losses, :integer
    add_column :players, :saves, :integer
    add_column :players, :innings, :integer
    add_column :players, :hits_given, :integer
    add_column :players, :runs_given, :integer
    add_column :players, :earned_runs, :integer
    add_column :players, :strikeouts, :integer
    add_column :players, :walks_given, :integer
  end
end
