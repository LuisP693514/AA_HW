require 'LRU_cache'

describe "LRUCache" do
    
    describe "#Initialize" do
        subject(:cache) {LRUCache.new}

        it 'should take in 1 arg: max_cache_size -> int' do
            ca  = LRUCache.new(7)
            expect(ca.max_cache_size).to be(7)
        end

        it 'should set @max_cache_size to 5 if no input is given' do
            
            expect(cache.max_cache_size).to be(5)

        end

        it 'should set @cache to an empty array' do

            expect(cache.send(:cache)).to be_instance_of(Array)

        end

    end

    it 'should have a getter for @max_cache_size' do
        c = LRUCache.new()
        expect {c.max_cache_size}.to_not raise_error
    end

    it 'should not expose the getter for @cache' do
        c = LRUCache.new()
        expect {c.cache}.to raise_error(NoMethodError)
    end

    describe '#count' do
        subject(:c) {LRUCache.new}
        let(:c2) {LRUCache.new}

        it 'should return the amount of items in the cache' do
            c2.send(:cache) << 1
            expect(c2.count).to be(1)
        end

    end

    describe '#add' do
        subject(:c) {LRUCache.new}
        
        it 'should take in one argument' do

            expect {c.add(4)}.to_not raise_error

        end

        context 'when cache is empty' do

            it 'should store the element in @cache with a DLL object along side it' do

                c.add(5)
                expect(c.send(:cache)[0][0]).to eq(5)
                expect(c.send(:cache)[0][1]).to be_instance_of(DoublyLinkedList)

            end

        end

        it 'should add elements to the end of the cache' do

            c.add(5)
            c.add(6)
            c.add(8)
            expect(c.send(:cache)[0][0]).to be(5)
            expect(c.send(:cache)[1][0]).to be(6)
            expect(c.send(:cache)[2][0]).to be(8)

        end

        it 'cache should not exceed max_cache_size' do

            c.add(1)
            c.add(2)
            c.add(3)
            c.add(4)
            c.add(5)
            c.add(6)

            expect(c.count).to be(5)

        end

        it 'should remove the least accessed element when adding past the cache limit' do 

            c.add(1)
            c.add(3)
            c.add(2)
            c.add(3)
            c.add(7)
            c.add(4)
            c.add(5)

            expect(c.send(:cache)[0][0]).to be(2)
            expect(c.send(:cache)[1][0]).to be(3)
            expect(c.send(:cache)[2][0]).to be(7)
            expect(c.send(:cache)[3][0]).to be(4)
            expect(c.send(:cache)[4][0]).to be(5)

        end

        it 'should not add the same element more than once' do

            c.add(1)
            c.add(1)
            c.add(1)

            expect(c.count).to be(1)

        end

    end

end