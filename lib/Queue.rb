class Queue
  def initialize
    @store = Array.new
  end

# beginning of array is front of queue
  def enqueue(element)
    @store << element
  end

  def dequeue
    raise ArgumentError.new("You can't dequeue an empty queue!") if empty?
    # shift removes first item of array
    @store.shift
  end

  def front
    raise ArgumentError.new("You can't call front on an empty queue!") if empty?
    @store[0]
  end

  def size
    @store.length
  end

  def empty?
    size == 0
  end

  def to_s
    @store.to_s
  end
end
