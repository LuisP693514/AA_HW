class Queue

    def initialize
        @queue = Array.new

    end

    def enqueue(el)

        @queue.unshift(el)
        
    end

    def dequeue

        @queue.pop

    end

    def peek

        @queue[-1]

    end

end