require_relative "Piece.rb"

class Board

    def initialize
        @board = Array.new(8) {Array.new(8)}
        @board.each_with_index do |row, row_index|
            row.each_with_index do |ele, idx|
                if row_index < 2 || row_index > 5
                    @board[row_index][idx] = Piece.new.value
                else
                    @board[row_index][idx] = NullPiece.new.value
                end
            end
        end
    end


    def print

        @board.each do |row|
            puts row.join(" ")
        end

    end




end


