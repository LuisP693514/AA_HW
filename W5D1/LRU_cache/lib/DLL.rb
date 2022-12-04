# Used to store values for the hash_map

class DoublyLinkedList

    attr_accessor :val, :prev, :next

    def initialize(val, prev=nil, nex=nil)
        @val = val
        @prev = prev
        @next = nex
        raise 'Invalid prev input. Must be DLL object or nil' unless @prev.instance_of?(DoublyLinkedList) || @prev.nil?
        raise 'Invalid next input. Must be DLL object or nil' unless @next.instance_of?(DoublyLinkedList) || @next.nil?   
    end

end