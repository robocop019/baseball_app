
teams = (1..10).to_a

teams.each do |team|
  players = Player.where(team_id: team)

  players.each do |player|

    player.update(doubles: 0, triples: 0, home_runs: 0, stolen_bases: 0, hbp: 0, appearances: 0, starts: 0, wins: 0, losses: 0, saves: 0, innings: 0, hits_given: 0, runs_given: 0, earned_runs: 0, strikeouts: 0, walks_given: 0)

  end

end