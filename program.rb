require 'rubygems'
require_relative 'classes/board.rb'
require_relative 'classes/boardcase.rb'
require 'pp'

board = Board.new
board.display_board
# print board.table[1][1].value_to_s