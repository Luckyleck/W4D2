require_relative "Piece.rb"

class Board

    attr_reader :board

    def initialize
        @board = Array.new(8) {Array.new(8)}
        @board.each_with_index do |row, row_index| # Filling rows with pieces
            row.each_with_index do |ele, idx|
                if row_index < 2 || row_index > 5
                    @board[row_index][idx] = Piece.new
                else
                    @board[row_index][idx] = NullPiece.new
                end
            end
        end
    end

    def [](pos)
        x, y = pos
        @board[x][y]
    end

    def []=(pos, val)
        x, y = pos[0], pos[1]
        @board[x][y] = val
    end
    

    def move_piece(start_pos,end_pos) # move piece takes in two arrays

        origin = self[start_pos]
        destination = self[end_pos]
    
        if self[start_pos].is_a?(NullPiece) || !self[end_pos].is_a?(NullPiece)
            raise "Not a valid move"
        else
            # board[start_pos] = board[end_pos]
            self[end_pos] = origin
            self[start_pos] = destination  
        end

    end


    # def move_piece(start_pos,end_pos)

    #     null_val = board[end_pos[0]][end_pos[1]]


    #     if !board[start_pos[0]][start_pos[1]].is_a?(Piece) || !board[end_pos[0]][end_pos[1]].is_a?(NullPiece) 

    #         raise "This move is not possible"
                    
    #     else

    #         board[end_pos[0]][end_pos[1]] = board[start_pos[0]][start_pos[1]]
    #         board[start_pos[0]][start_pos[1]] = null_val

    #     end

        
    # end

    # Check if end pos is a position
    # Check if end pos has enemy piece or friendly piece
    # Check if end pos is allowed to move(checking king)
    # Check if piece is in path of king
    def print

        board.each_with_index do |row,i|
            puts "#{8 - i} #{row.join(" ")}"
        end

        puts %(  A B C D E F G H)

    end




end




