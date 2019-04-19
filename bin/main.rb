load '..\lib\player.rb'
load '..\lib\game.rb'

def choose_players
  print 'Player name who wish to choose X :'
  player1_name = gets.chomp
  player1 = Player.new(player1_name, 'X')

  print 'Player name who wish to choose O :'
  player2_name = gets.chomp
  player2 = Player.new(player2_name, 'O')

  start_game = Game.new(player1, player2)
  start_game.game_start 
  print 'Do you want to play again: (Y/N) '
  wish = gets.chomp.to_s.upcase
  choose_players until wish == 'N'
end

choose_players
