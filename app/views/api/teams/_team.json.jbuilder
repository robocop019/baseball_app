json.id team.id
json.name team.name
json.wins team.wins
json.losses team.losses
json.ties team.ties
json.bio team.bio

json.players do 
  json.array! team.players, partial: 'api/players/player', as: :player
end