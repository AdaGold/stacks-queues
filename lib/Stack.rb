class Stack
  def initialize
    @store = Array.new
  end

# end of array is considered 'top' of stack
  def push(element)
    return @store << element
  end

  def pop
    raise ArgumentError.new("You can't pop from an empty array!") if empty?
    return @store.pop
  end

  def top
    raise ArgumentError.new("You can't call top on an empty array!") if empty?
    return @store[-1]
  end

  def size
    return @store.length
  end

  def empty?
    return size == 0
  end

  def to_s
    return @store.to_s
  end
end
