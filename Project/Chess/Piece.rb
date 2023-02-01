

class Piece

    attr_accessor :value

    def initialize
        @value = '▣'
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
