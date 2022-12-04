require 'DLL'

describe 'DoublyLinkedList' do

    it 'has a getter for @val, @prev, @next' do
        p = DoublyLinkedList.new(3)

        expect {p.val}.to_not raise_error
        expect {p.prev}.to_not raise_error
        expect {p.next}.to_not raise_error

    end

    it 'has a setter for @val, @prev, @next' do
        p = DoublyLinkedList.new(3)

        expect {p.val = 5}.to_not raise_error
        expect {p.prev = 2}.to_not raise_error
        expect {p.next = 1}.to_not raise_error

    end

    describe '#initialize' do
        let(:nex) {DoublyLinkedList.new(3)}
        let(:pre) {DoublyLinkedList.new(1)}
        subject(:dll) {DoublyLinkedList.new(2, pre, nex)}

        it 'should take in 3 args: val, prev, next' do

            expect(dll.prev).to eq(pre)
            expect(dll.next).to eq(nex)
            expect(dll.val).to be(2)

        end

        it 'should raise error when @prev or @next is not a DLL object nor nil' do
            
            expect {DoublyLinkedList.new(4, "4", nex)}.to raise_error('Invalid prev input. Must be DLL object or nil')
            expect {DoublyLinkedList.new(4, pre, [])}.to raise_error('Invalid next input. Must be DLL object or nil')

        end

        context 'when no prev is given' do
            it 'should set @prev to nil' do
                expect(nex.prev).to be_nil
            end
        end

        context 'when no next is given' do
            it 'should set @next to nil' do
                expect(nex.next).to be_nil
            end
        end

    end

end