class Player
  attr_accessor :player_move
  attr_reader :name, :icon
  def initialize(name, icon)
    @name = name
    @icon = icon
    @player_move = []
  end


  def move(board)
    puts "#{name} Enter your move"
    choice = gets.chomp.to_i
    if (1..9).cover?(choice)
      if board.place_taken?(choice-1)
        puts 'Place taken try again'
      else
        choice
      end
    else
      puts 'Enter a valid number'
    end
  end
end
