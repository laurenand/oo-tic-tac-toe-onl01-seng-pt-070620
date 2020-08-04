require 'pry'
class TicTacToe
  def initialize(board = nil)
    @board = Array.new(9, " ")
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
    string = string.to_i - 1
  end
  def move(i, token = "X")
    @board[i] = token
  end
  def position_taken?(i)
    @board[i] != " "
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
      move(i, current_player)
    else
      puts "Please choose 1-9."
    end
    display_board
  end
  def turn_count
    @board.count{|turns| turns != " "}
  end 
  def current_player
    turn_count % 2 == 0 ? "X" : "O"
  end
end 