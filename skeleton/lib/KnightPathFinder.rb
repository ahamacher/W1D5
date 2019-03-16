require '00_tree_node.rb'

class KnightPathFinder

    def initialize(start_pos)
        @start_pos = PolyTreeNode.new(start_pos)
        @pos_nodes = Hash.new   # key = position , value = PolyTreeNode 
    end

    def create_board()
        
    end

    def find_path(target)
    
    end

    def self.valid_moves(pos)
        x = pos[0]
        y = pos[1]
        x + 1
        x + 


        #returning an array at the end
    end

    def build_move_tree
        #2   
    end

    def valid_pos?(pos) #Array [x, y]
        return false if pos[0] < 0 || pos[0] > 7
        return false if pos[1] < 0 || pos[1] > 7
        true
    end




end