require 'rspec'
require './stack.rb'


describe 'Stack' do

  before do
    @s = Stack.new
  end


  describe 'push' do

    it "should be able to push in a new item when empty" do
      @s.push(:a)
      expect(@s.top.value).to eq(:a)
    end

    it "Should be able to push in a new item when non empty" do
      @s.push(:a)
      @s.push(:b)
      expect(@s.top.value).to eq(:b)
    end

  end

  describe 'shift' do

    it "remove the item at the start of the que" do
      @s.push(:a)
      @s.push(:b)
      expect(@s.peek).to eq(:b)
      result = @s.pop
      expect(result).to eq(:b)
      expect(@s.peek).to eq(:a)
    end

  end

  describe 'peek' do

    it "return the item at the start of the que" do
      @s.push(:a)
      expect(@s.peek).to eq(:a)
    end

  end

end





# Your job is to build out a queue and a stack. One of 
# these specialized data types can be built as an array without 
# losing any performance. The other one can only be built as a 
# linked list to keep from losing time. Build out your queues 
# and stacks using both an array and a linked list, starting 
# with the array.

# The queue should have the following methods:

# push: push an item to the end of the queue.
# shift: remove the item at the start of the queue and return it.
# peek: return the item at the start of the queue, but don't 
# remove it.
