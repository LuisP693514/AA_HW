require_relative 'DLL'

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

      self.cache.push([el, DoublyLinkedList.new(el)])

    end

    def show
      # shows the items in the cache, with the LRU item first
      prn_arr = []
      @cache.each {|el| prn_arr << el[0]}
      p prn_arr
    end

    private
    # helper methods go here!

    attr_reader :cache

end