class GraphNode
    attr_accessor :value, :neighbors

    def initialize(value)
        self.value = value
        self.neighbors = []
    end
end

def bfs(node, target)
    queue = [node]
    
    until queue.empty?
        current = queue.shift
        return current if current.value == target

        current.neighbors.each do |neighbor|
            queue.push(neighbor)
        end
        queue.each {|node| print node.value }
        puts
    end

    nil

end

a = GraphNode.new('a')
b = GraphNode.new('b')
c = GraphNode.new('c')
d = GraphNode.new('d')
e = GraphNode.new('e')
f = GraphNode.new('f')
a.neighbors = [b, c, e]
c.neighbors = [b, d]
e.neighbors = [a]
f.neighbors = [e]

# p bfs(a , "d")
p bfs(a , "f")