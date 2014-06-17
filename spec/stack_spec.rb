require 'rspec'
require './stack.rb'


describe 'Stack' do

  before do
    @s = Stack.new
  end


  describe 'push' do

    it "should be able to push in a new item when empty" do
      
    end

    xit "Should be able to push in a new item when non empty" do
      
    end

  end

  describe 'shift' do

    xit "remove the item at the start of the que" do
      
    end

  end

  describe 'peek' do

    xit "return the item at the start of the que" do
  
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
