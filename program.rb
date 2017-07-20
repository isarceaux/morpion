require 'rubygems'
require_relative 'classes/board.rb'
require_relative 'classes/boardcase.rb'
require 'pp'

board = Board.new
# board.display_board
board.table[0][0].value = '0'
board.table[1][1].value = '0'
board.table[2][2].value = '0'
board.display_board
puts board.end_of_game