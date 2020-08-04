require 'pry'
class TicTacToe
  def initialize(board=nil)
    @board=board || Array.new(9," ")
  end
  WIN_COMBINATIONS=[[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]]
  def display_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end 
  def input_to_index(string)
    string.to_i - 1
  end
  def move(i, token = "X")
    @board[i] = token
  end
  def position_taken?(i)
    if @board[i] == " "
      false
    else 
      true
    end
  end
  def valid_move?(i)
    if @board[i] == " "
      true
    else
      false
    end
  end
  def turn
    puts "Please choose 1-9."
    string = gets.strip
    i = input_to_index(string)
    if valid_move?(i)
      move(i, token)
    else
      turn
    end
    display_board
  end
  def turn_count
    @board.count{|token| token 
  end
  end
end 