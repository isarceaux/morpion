require_relative 'boardcase'
require_relative 'player'

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
    d_table =[]
    line = '-------------'
    d_table.push(line)
    @table.each do |r|
      a = '| '
      r.each do |e|
        a = a + e.value_to_s + ' | '
      end
      d_table.push(a)
      d_table.push(line)
    end
    puts d_table
  end

  def end_of_game
    sum_table=[]
    table_number = []
    @table.each do |r|
      line_sum = []
      r.each do |e|
        if e.value == 'X'
          line_sum.push(1)
        else
          if (e.value == 'O') || (e.value == '0')
            line_sum.push(5)
          else
            line_sum.push(0)
          end
      end
      end
      table_number.push(line_sum)
    end
    sum_table.push(table_number[0].reduce(0,:+))
    sum_table.push(table_number[1].reduce(0,:+))
    sum_table.push(table_number[2].reduce(0,:+))
    sum_table.push(table_number[0][0]+table_number[1][0]+table_number[2][0])
    sum_table.push(table_number[0][1]+table_number[1][1]+table_number[2][1])
    sum_table.push(table_number[0][2]+table_number[1][2]+table_number[2][2])
    sum_table.push(table_number[0][0]+table_number[1][1]+table_number[2][2])
    sum_table.push(table_number[0][2]+table_number[1][1]+table_number[2][0])
    # puts sum_table
    if sum_table.include?(3)
      return 'Le joueur X a gagné'
    else
      if sum_table.include?(15)
        return 'Le joueur O a gagné'
      else
        table_global =[]
        table_number.each do |y|
          y.each do |z|
            table_global.push(z)
          end
        end
        if (table_global.include?(0) == false)
          return "Aucun joueur n'a gagné"
        else
          return nil
        end
      end
    end
  end

  def play(player,symb)
    authorized = [1,2,3]
    puts "#{player} : Entrez la ligne (de 1 à 3)"
    i=gets.chomp.to_i-1
    while (authorized.include?(i+1) == false)
      puts "#{player} : La ligne n'est pas correcte. Entrez la ligne (de 1 à 3)"
      i=gets.chomp.to_i-1
    end
    puts "#{player} : Entrez la colonne (de 1 à 3)"
    j=gets.chomp.to_i-1
    while (authorized.include?(j+1) == false)
      puts "#{player} : La colonne n'est pas correcte. Entrez la colonne (de 1 à 3)"
      j=gets.chomp.to_i-1
    end
    if (@table[i][j].value == ' ')
      @table[i][j].value = symb
    else
      puts "La case #{i}#{j} n'est pas libre, choisissez une autre case."
      self.play(player,symb)
    end
    # puts self.end_of_game
  end

end


