class AddColumnsToPlayer < ActiveRecord::Migration[6.0]
  def change
    add_column :players, :at_bats, :integer
    add_column :players, :hits, :integer
    add_column :players, :doubles, :integer
    add_column :players, :triples, :integer
    add_column :players, :home_runs, :integer
    add_column :players, :runs, :integer
    add_column :players, :rbis, :integer
    add_column :players, :stolen_bases, :integer
    add_column :players, :walks, :integer
    add_column :players, :hbp, :integer
  end
end
