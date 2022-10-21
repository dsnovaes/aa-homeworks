class Queue
    def initialize
        @data = []
    end

    def enqueue(el)
        @data.push(el)
    end

    def dequeue
        @data.shift
    end

    def peek
        @data.first
    end
end