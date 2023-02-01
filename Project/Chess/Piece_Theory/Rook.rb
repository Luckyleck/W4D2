class Rook < Piece
    include Slideable

    def moves_dirs

        ORTHOGONAL_DIRS

    end
end