require '..\lib\player.rb'
require '..\lib\game.rb'


def choose_players
   Print "Player name who wish to choose X :"
   player1_name= gets.chomp
   player1 =Player.new(player1_name,"X")

   Print "Player name who wish to choose O :"
   player2_name = gets.chomp
   player2 = Player.new(player2_name,"O")
   start_game= Game.new(player1, player2)
   start_game.game_start
end
choose_players