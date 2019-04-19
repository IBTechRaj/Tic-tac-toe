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

  def full?
    @environ.all? { |a| a.is_a?(String) }
  end

  def is_filled?(num)
    @environ[num] == 'X' || @environ[num] == 'O'
  end

  def fill(pos, icon)
    @environ[pos] = icon
  end
end
