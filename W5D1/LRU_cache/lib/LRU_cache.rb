require_relative 'DLL'
require 'byebug'

class LRUCache

    attr_reader :max_cache_size

    def initialize(max_cache_size=5)

      @max_cache_size = max_cache_size
      @cache = []

    end

  def count
    # returns number of elements currently in cache

    @cache.count
  end

  def add(el)
    # adds element to cache according to LRU principle

    if @cache.length == @max_cache_size

      vals = @cache.map {|arr| arr[0]}

      if vals.include?(el)
        
        idx = grab_idx(el)
        delete_old(el, idx)

      else

        @cache.shift
        self.cache.push([el, DoublyLinkedList.new(el)])

      end

    else

      if @cache.empty?

        self.cache.push([el, DoublyLinkedList.new(el)])

      else

        vals = @cache.map {|arr| arr[0]}

        if vals.include?(el)
        
          idx = grab_idx(el)
          delete_old(el, idx)

        else

          push_new(el)

        end

      end

    end

  end

  def show
    # shows the items in the cache, with the LRU item first

    prn_arr = @cache.map {|el| el[0]}
    p prn_arr

  end

  private

  attr_reader :cache

  def delink(dll)

    if dll.tail == dll && dll.head != dll
      dll.dequeue
      return
    end

    dll.prev.next = dll.next if dll.prev
    dll.next.prev = dll.prev if dll.next

  end

  def push_new(el)

    old_dll = @cache[-1][-1]
    dll = DoublyLinkedList.new(el)
    old_dll.add(dll)
    self.cache.push([el, dll]) 

  end

  def grab_idx(el)
    
    vals_idx = @cache.map.with_index {|arr, i| [arr[0], i]}
    idx = 0
    vals_idx.each {|sub_arr|

      if sub_arr[0] == el
        idx = sub_arr[-1]
        break
      end
    }

    idx
    
  end

  def delete_old(el, idx)

    dll_to_be_moved = @cache[idx][-1]
    delink(dll_to_be_moved)
    @cache.delete_at(idx)

    if @cache.empty?

      self.cache.push([el, dll_to_be_moved]) 

    else

      old_dll = @cache[-1][-1]
      old_dll.add(dll_to_be_moved) unless old_dll.head == old_dll
      self.cache.push([el, dll_to_be_moved]) 

    end

  end

end 

# Test case

johnny_cache = LRUCache.new(4)

johnny_cache.add("I walk the line")
johnny_cache.add(5)

p johnny_cache.count # => returns 2

johnny_cache.add([1,2,3])
johnny_cache.add(5)
johnny_cache.add(-5)
johnny_cache.add({a: 1, b: 2, c: 3})
johnny_cache.add([1,2,3,4])
johnny_cache.add("I walk the line")
johnny_cache.add(:ring_of_fire)
johnny_cache.add("I walk the line")
johnny_cache.add({a: 1, b: 2, c: 3})


johnny_cache.show # => prints [[1, 2, 3, 4], :ring_of_fire, "I walk the line", {:a=>1, :b=>2, :c=>3}]