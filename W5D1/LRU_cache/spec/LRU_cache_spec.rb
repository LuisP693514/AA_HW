require 'LRU_cache'

describe "LRUCache" do

    it 'should have a getter for @max_cache_size' do
        c = LRUCache.new()
        expect {c.max_cache_size}.to_not raise_error
    end

    describe "#Initialize" do
        subject(:cache) {LRUCache.new()}

        it 'should take in 1 arg: max_cache_size -> int' do
            ca  = LRUCache.new(7)
            expect(ca.max_cache_size).to be(7)
        end

        it 'should set @max_cache_size to 5 if no input is given' do
            
            expect(cache.max_cache_size).to be(5)

        end

    end

end