
teams = (2..10).to_a

teams.each do |team|
  players = Player.where(team_id: team)

  players.each do |player|

    total_hits = player.hits

    singles = rand(0..total_hits)
    total_hits -= singles

    doubles = rand(0..total_hits)
    total_hits -= doubles

    triples = rand(0..total_hits)
    total_hits -= triples

    home_runs = rand(0..total_hits)

    player.update(doubles: doubles, triples: triples, home_runs: home_runs)

  end

end