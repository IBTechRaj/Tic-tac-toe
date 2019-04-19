require '..\lib\player.rb'
require '..\lib\board.rb'
class Game
    def def initialize(player1, player2)   
      @player1 = player1
      @player1 = player2
      @board = Board.new([1,2,3,4,5,6,7,8,9])
      @turn = 1
      @result_combinations = [[1,2,3],[4,5,6],[7,8,9],
                              [1,4,7],[2,5,8],[3,6,9],
                              [1,5,9],[3,5,7]
                             ] 
    end
    
    def start

    end

    def winner?
      players = [@player1, @player2]
      players.each {|player|
        @result_combinations.each{|combo|
          return player.name() if win?(combo)
        }
      }
    end

    def win?(combo)
      if combo & player.player_move() == combo
        true
      end
      false
    end
end