# Used to store values for the hash_map

class DoublyLinkedList

    attr_accessor :val, :prev, :next, :tail, :head

    def initialize(val)

        @val = val
        @head = self
        @tail = self
        @prev = nil
        @next = nil

    end

    def add(h)

        h.next = self
        @prev = h
        @head = h
        h.tail = @tail

        curr = h
        until curr.next.nil?

            curr.next.head = h
            curr = curr.next

        end

    end

    def dequeue

        new_tail = @tail.prev
        new_tail.next = nil
        new_tail.tail = new_tail
        @tail = new_tail
        curr = new_tail

        until curr.prev.nil?
            curr.prev.tail = new_tail
            curr = curr.prev
        end

    end

    def inspect

        @tail.val

    end

end