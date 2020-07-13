class RenameTeamOnPlayers < ActiveRecord::Migration[6.0]
  def change
    rename_column :players, :team, :team_id
  end
end
