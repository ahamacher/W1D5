class PolyTreeNode
    attr_accessor :value, :children
    attr_reader :parent

    def initialize(value=nil)
        @parent = nil
        @children = []
        @value = value
    end

    def parent
        @parent
    end

    def parent=(new_parent)
        if parent
            if new_parent 
                parent.children.delete(self) 
                new_parent.children << self if !new_parent.children.include?(self)
            else
                parent.children.delete(self)
            end
        else
            if new_parent
                new_parent.children << self if !new_parent.children.include?(self)
            end
        end
        @parent = new_parent
    end
    
    def add_child(child)
        child.parent = self
    end
    
    def remove_child(child)
        child.parent = nil if child
        deleted_child = children.delete(child)
        raise "Input is not a child node" if deleted_child == nil
        
    end

    def dfs(target)
        return self if self.value == target
        self.children.each do |child_node|
            res = child_node.dfs(target)
            return res if res
        end
        nil
    end 


    def bfs(target)
        queue = Array.new
        queue << self
        until queue.empty?
            first = queue.shift
            if first.value == target
                return first
            else 
                queue.concat(first.children)
            end
        end
        nil
    end

end

