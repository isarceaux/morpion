require_relative 'board'
require_relative 'boardcase'
require_relative 'player'

class Game


  def initialize
    @playerX = Player.new('PlayerX','X')
    @playerO = Player.new('PlayerO','O')
    @board = Board.new
  end


  def start
    @next_player = @playerX
    self.turn
  end

  def turn
    @board.display_board
    if (@board.end_of_game == nil)
      @board.play(@next_player.name,@next_player.symb)
      (@next_player == @playerX)? (@next_player = @playerO) : (@next_player = @playerX)
      self.turn
    else
      puts 'La partie est finie'
      puts @board.end_of_game
    end
  end

end