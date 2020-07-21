json.id player.id
json.name player.name
json.number player.number
json.position player.position
json.team player.team.name


json.hitting_stats do
  json.at_bats player.at_bats
  json.hits player.hits
  json.doubles player.doubles
  json.triples player.triples
  json.home_runs player.home_runs
  json.runs player.runs
  json.rbis player.rbis
  json.stolen_bases player.stolen_bases
  json.walks player.walks
  json.hbp player.hbp

  json.avg player.avg
  json.obp player.obp
  json.slg player.slg
end


json.pitching_stats do 
  json.appearances player.appearances
  json.starts player.starts
  json.wins player.wins
  json.losses player.losses
  json.saves player.saves
  json.innings player.innings
  json.hits player.hits_given
  json.runs player.runs_given
  json.earned_runs player.earned_runs
  json.strikeouts player.strikeouts
  json.walks player.walks_given
  json.era player.era
end