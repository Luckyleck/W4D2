

class Piece

    attr_accessor :value

    def initialize
        @value = 1
    end


end


class NullPiece < Piece

    attr_accessor :value

    def initialize
        @value = -1 
    end



end
