class Board
  attr_accessor :environ
  def initialize(environ)
    @environ = environ
  end

  def display_board
    puts "  #{@environ[7]} | #{@environ[8]} | #{@environ[9]}"
    puts ' ---|---|---'
    puts "  #{@environ[4]} | #{@environ[5]} | #{@environ[6]}"
    puts ' ---|---|---'
    puts "  #{@environ[1]} | #{@environ[2]} | #{@environ[3]}"
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
