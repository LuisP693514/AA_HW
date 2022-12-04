require 'DLL'

describe 'DoublyLinkedList' do

    describe '#initialize' do

        subject(:dll) {DoublyLinkedList.new(2)}

        it 'should take in 1 arg: val -> any_object' do

            expect(dll.val).to be(2)

        end

        it 'should set @next to nil' do

            expect(dll.next).to be_nil

        end

        it 'should set @head to self' do 

            expect(dll.head).to be(dll)

        end

        it 'should set @prev to nil' do

            expect(dll.prev).to be_nil

        end

        it 'should set @tail to self' do

            expect(dll.tail).to be(dll)

        end

    end

    it 'has a getter for @val, @prev, @next, @head, @tail' do
        p = DoublyLinkedList.new(3)

        expect {p.val}.to_not raise_error
        expect {p.prev}.to_not raise_error
        expect {p.next}.to_not raise_error
        expect {p.head}.to_not raise_error
        expect {p.tail}.to_not raise_error

    end

    it 'has a setter for @val, @prev, @next, @head, @tail' do
        p = DoublyLinkedList.new(3)

        expect {p.val = 5}.to_not raise_error
        expect {p.prev = 2}.to_not raise_error
        expect {p.next = 1}.to_not raise_error
        expect {p.head = 4}.to_not raise_error
        expect {p.tail = 3}.to_not raise_error

    end

    describe '#add' do

        let(:oldest) {DoublyLinkedList.new("I am the oldest")}
        let(:old_head) {DoublyLinkedList.new("I am old")}
        let(:new_head) {DoublyLinkedList.new("I am the new head")}   
        subject(:dll) {DoublyLinkedList.new("I am missing a head")}

        it 'should take in one argument: new_head -> DLL Object' do

            dll.add(new_head)

        end

        it 'should set the new object\'s @next to point to the old head' do

            dll.add(new_head)
            expect(new_head.next).to be(dll)

        end

        it 'should set @head to point to the newly added head' do

            dll.add(new_head)
            expect(dll.head).to be(new_head)

        end

        it 'should set @prev to point to the newly added head' do

            dll.add(new_head)
            expect(dll.prev).to be(new_head)

        end

        it 'should set new object\'s @tail to point to the current tail' do

            dll.add(new_head)
            expect(new_head.tail).to be(dll)

        end

        it 'should update @head for every object connected in this linked list' do

            oldest.add(old_head)
            old_head.add(dll)
            dll.add(new_head)

            expect(oldest.head).to be(new_head)
            expect(old_head.head).to be(new_head)
            expect(dll.head).to be(new_head)

        end

    end 

    describe '#dequeue' do

        let(:old_tail) {DoublyLinkedList.new("I'm old")}
        let(:mid) {DoublyLinkedList.new("I should be the new tail")}   
        subject(:dll) {DoublyLinkedList.new("middd")}
        let(:head) {DoublyLinkedList.new("head")}

        before(:each) {
            
            old_tail.add(mid)
            mid.add(dll)
            dll.add(head)
    
        }

        it 'should run without error' do

            mid.dequeue
        
        end

        it 'should remove the current @tail from existence' do 

            old_tail.dequeue
            expect(mid.next).to be_nil

        end

        it 'should update the current tail\'s tail to be the new tail' do

            old_tail.dequeue
            expect(mid.tail).to be(mid)

        end

        it 'should update all tail pointers in the linked list' do

            old_tail.dequeue

            expect(dll.tail).to be(mid)
            expect(head.tail).to be(mid)

        end

    end

end