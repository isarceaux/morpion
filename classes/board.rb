require_relative 'boardcase'

class Board
  attr_accessor :table
  def initialize
    @table = []
    for i in (1..3)
      row = []
      for j in (1..3)
        row.push(BoardCase.new(i,j))
        j+=1
      end
      @table.push(row)
      i+=1
    end
  end

  def display_board
    @d_table = @table
    print '| ' + @table[1][1].value_to_s + ' | '
    for i in (1..3)
      for j in (1..3)
        print '| ' + @table[i][j].value_to_s + ' | '
        j+=1
      end
      i+=1
    end
    # print @d_table
  end





end


