class Stack
  def initialize
    @store = Array.new
  end

  def push(element)
    @store << element
    #@store.unshift(element) #another solution too
  end

  def pop
    return @store.pop
  end

  def top
    return @store.last
  end

  def size
    return @store.length
  end

  def empty?
    return @store.length == 0
    # return size == 0
    # return @store.empty?
  end

  def to_s
    return @store.to_s
  end
end
