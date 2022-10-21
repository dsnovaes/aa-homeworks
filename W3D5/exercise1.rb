class Stack
    def initialize
        @data = []
    end

    def push(el)
        data.push(el)
        self
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