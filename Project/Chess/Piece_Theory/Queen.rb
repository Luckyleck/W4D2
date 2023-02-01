class Queen < Piece
    include Slideable

    def moves_dirs
        ORTHOGONAL_DIRS + DIAGONAL_DIRS
    end


end