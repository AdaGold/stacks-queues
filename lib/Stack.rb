class Stack
  def initialize
    @store = Array.new
  end

  def push(element)
    @store << element
  end

  def pop
    @store.pop
  end

  def top
    @store.last
  end

  def size
    @store.length
  end

  def empty?
    @store.empty?
  end

  def to_s
    return @store.to_s
  end
end
