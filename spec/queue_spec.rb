require 'rspec'
require './queue.rb'


describe 'Node' do

  before do
    @n = Node.new
  end

  it "exists" do
    expect(@n).to be_a(Node)
  end

  it "should have a value attribute" do
    expect(@n.value).to eq(nil)
  end

  it "should have an arrow attribute" do
    expect(@n.value).to eq(nil)
  end

end


describe 'Queue' do

  before do
    @q = Queue.new
  end


  describe 'push' do

    it "should be able to push in a new item when empty" do
      @q.push(:new_item)
      expect(@q.start.value).to eq(:new_item)
      expect(@q.end.value).to eq(:new_item)
    end

    it "Should be able to push in a new item when non empty" do
      @q.push(:first_item)
      @q.push(:second_item)
      expect(@q.start.value).to eq(:first_item)
      expect(@q.end.value).to eq(:second_item)
    end

  end

  describe 'shift' do

    it "remove the item at the start of the que" do
      @q.push(:first_item)
      @q.push(:second_item)

      expect(@q.shift).to eq(:first_item)
      expect(@q.start.value).to eq(:second_item) 
    end

  end

  describe 'peek' do

    it "return the item at the start of the que" do
      @q.push(:first_item)
      @q.push(:second_item)

      expect(@q.peek.value).to eq(:first_item)
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

