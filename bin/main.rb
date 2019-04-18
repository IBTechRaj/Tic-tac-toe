require '..\lib\player.rb'


def tic_tac_toe
    choose_players()
   display_board()
   result=play()
   display"conghrats winner"
   exit
end

tic_tac_toe

def choose_players

    Print "Player name who wish to choose X :"
   player1 = gets.chomp
   player1=Player.new(player1,"X")

   Print "Player name who wish to choose O :"
   player2 = gets.chomp
   player2=Player.new(player2,"O")
end