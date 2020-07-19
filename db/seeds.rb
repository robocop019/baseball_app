
teams = (1..10).to_a

teams.each do |team|
  players = Player.where(team_id: team)

  players.each do |player|

    pitcher = rand(0..5)

    next if pitcher != 3

    appearances = rand(1..10)

    total_app = appearances

    starts = rand(0..appearances)

    wins = rand(0..total_app)
    total_app -= wins

    losses = rand(0..total_app)
    total_app -= losses

    saves = rand(0..total_app)

    innings = rand(1..(appearances * 5))

    hits_given = rand(0..(innings * rand(1..4)))

    runs_given = rand(0..(innings * rand(1..3)))

    earned_runs = rand(0..runs_given)

    strikeouts = rand(0..(innings * rand(1..2)))

    walks_given = rand(0..(innings * rand(1..2)))

    player.update(appearances: appearances, starts: starts, wins: wins, losses: losses, saves: saves, innings: innings, hits_given: hits_given, runs_given: runs_given, earned_runs: earned_runs, strikeouts: strikeouts, walks_given: walks_given)

  end

end
