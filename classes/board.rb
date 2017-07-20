require 'boardcase'

class Board
  attr_accessor :table
  def initialize
    @table = []

    for i in (1..3)
      for j in (1..3)
        row = []
        row.push(BoardCase.new(i,j))
        j+=1
      end
      @table.push(row)
      i+=1
    end
  end

  def show_table
    puts @table
  end

end

bob=Board.new
puts bob.show_table

