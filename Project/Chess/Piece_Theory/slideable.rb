module Slideable
    ORTHOGONAL_DIRS = [
        [0, -1], #left
        [0, 1], #right
        [-1, 0], #up
        [1, 0] #down
    ]

    DIAGONAL_DIRS = [
        [-1, -1],  #Northwest
        [-1, 1], #Northeast
        [1, 1], #Southeast
        [1, -1] #Southwest
    ]

    def moves

        moves_dirs.map {|dirs| grow_unblocked_moves_dir(dirs[0],dirs[1])}

    end

    def grow_unblocked_moves_dir(x, y)

        moves = []

        current_position = self.value #[1,2]

        invalid = false

        until !invalid

            new_x = current_position[0] + x
            new_y = current_position[1] + y

            new_pos[new_x,new_y]

            
    end



end