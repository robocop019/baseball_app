class CreateSchedules < ActiveRecord::Migration[6.0]
  def change
    create_table :schedules do |t|
      t.integer :home_team
      t.integer :away_team
      t.datetime :date
      t.string :field

      t.timestamps
    end
  end
end
