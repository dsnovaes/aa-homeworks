class Stack
    def initialize
        @data = []
    end

    def push(el)
        data.push(el)
    end

    def pop
        data.pop
    end
    
    def peek
        data.last
    end

    private
    attr_reader :data
end