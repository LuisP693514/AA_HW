require_relative 'DLL'

class LRUCache

    attr_reader :max_cache_size

    def initialize(max_cache_size=5)

        @max_cache_size = max_cache_size

    end

    def count
      # returns number of elements currently in cache
    end

    def add(el)
      # adds element to cache according to LRU principle
    end

    def show
      # shows the items in the cache, with the LRU item first
    end

    private
    # helper methods go here!

end