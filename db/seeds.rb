players = ['Andrew Montesantos', 'Angel Dejesus', 'Bill Nestos', 'Chris Bowen', 'Christian Erickson', 'Don Granzin', 'Eddie Santiago', 'Gary Ramos', 'Jake Karmel', 'Joe Cosentino', 'John Montesantos', 'Kevin Jung', 'Luis Berrios', 'Nick Kafkis', 'Ricardo Uriostegui', 'Steve Eanet', 'William Alvarez', 'Zabit Isai', 'Zach Strimel' ]
numbers = [22,24,98,69,16,0,28,26,12,17,19,3,25,46,0,4,0,0,17]

numbers.each do |number|
    @player = Player.new(name: player, team_id: 1)

    @player.save 
end

# Andrew Montesantos  22,  Pitcher
# Angel Dejesus 24,  Left Field
# Bill Nestos 98,  Catcher
# Chris Bowen 19,  Left Field
# Christian Erickson  16,  Short Stop
# Don Granzin 0, First Base
# Eddie Santiago  28,  Third Base
# Gary Ramos  26,  Center Field
# Jake Karmel 12,  Pitcher
# Joe Cosentino 17,  First Base
# John Montesantos  33,  First Base
# Kevin Jung  3, Catcher
# Luis Berrios  25,  Pitcher
# Nick Kafkis 46,  Right Field
# Ricardo Uriostegui  0, Second Base
# Steve Eanet 4, Second Base
# William Alvarez 0, Second Base
# Zabit Isai  0, Center Field
# Zach Strimel  17,  