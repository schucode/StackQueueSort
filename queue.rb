

class Node
  attr_accessor :value, :arrow
  
  def initialize(value=nil, node=nil)
    @value = value
    @arrow = node
  end
end


class Queue
  attr_accessor :start, :end

  def initialize
    @end = nil
    @start = nil
  end

  def push(elem)
    if @start == nil
      n = Node.new(elem)
      @start = n
      @end = n
    else 
      n = Node.new(elem)
      @end.arrow = n
      @end = n
    end
  end

  def shift
    old_start = @start
    @start = old_start.arrow
    return old_start.value
  end

  def peek
    return @start
  end

end


