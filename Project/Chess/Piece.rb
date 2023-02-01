

class Piece

    attr_accessor :value

    def initialize
        @color = '▣'
        @board = Board[]
        @current_pos = Board.board.each_with_index do |row, i|
            row.index(self)
        end
    end

    def inspect
        @value
    end

    def to_s
        @value.to_s
    end


end


class NullPiece < Piece

    attr_accessor :value

    def initialize
        @value = '▢' 
    end



end

asdf = [[1,2,3],[4,5,6]]

# p asdf.index(3)


p asdf.map do |row|
    row.find(5)
end
