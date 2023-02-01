class Bishop < Piece
    include Slideable

    def moves_dirs

        DIAGONAL_DIRS

    end
end