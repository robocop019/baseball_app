class CreatePitchingStats < ActiveRecord::Migration[6.0]
  def change
    create_table :pitching_stats do |t|
      t.integer :appearances
      t.integer :starts
      t.integer :wins
      t.integer :losses
      t.integer :saves
      t.decimal :innings
      t.integer :hits
      t.integer :runs
      t.integer :earned_runs
      t.integer :strikeouts
      t.integer :walks
      t.integer :player

      t.timestamps
    end
  end
end
