class CreateHittingStats < ActiveRecord::Migration[6.0]
  def change
    create_table :hitting_stats do |t|
      t.integer :at_bats
      t.integer :hits
      t.integer :doubles
      t.integer :triples
      t.integer :home_runs
      t.integer :runs
      t.integer :rbis
      t.integer :stolen_bases
      t.integer :walks
      t.integer :hbp
      t.integer :player

      t.timestamps
    end
  end
end
