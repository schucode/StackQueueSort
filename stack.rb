require_relative 'queue.rb'


class Stack
  attr_accessor :top

  def initialize
    @top = nil
  end

  def push(elem)
    if @top == nil
      n = Node.new(elem)
      @top = n
    else
      n = Node.new(elem, @top)
      @top = n
    end
  end

  def pop
    old_top = @top
    @top = old_top.arrow
    return old_top.value
  end

  def peek
    return @top.value
  end

end

# The stack should have the following methods:

# push: push an item to the top of the stack.

# pop: remove the item at the top of the stack and return it.

# peek: return the item at the top of the stack, but don't 
# remove it.