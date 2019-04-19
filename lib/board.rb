class Board
  attr_accessor :environ
  def initialize(environ)
    @environ = environ
  end

  def display_board
    puts "  #{@environ[6]} | #{@environ[7]} | #{@environ[8]}"
    puts ' ---|---|---'
    puts "  #{@environ[3]} | #{@environ[4]} | #{@environ[5]}"
    puts ' ---|---|---'
    puts "  #{@environ[0]} | #{@environ[1]} | #{@environ[2]}"
  end

  def full
  end
  def move(pos)
    @environ[pos] = icon 
  end

  def right_move
  end
end
arr = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
board = Board.new(arr)
board.display_board
