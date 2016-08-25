class Queue
  def initialize
    @queue = Array.new
  end

  def enqueue(element)
    return @queue.push(element) # @queue.unshift(element)
  end

  def dequeue
    return @queue.delete_at(0) # or @queue.shift
  end

  def front
    return @queue[0] # or @queue.first
  end

  def size
    return @queue.length
  end

  def empty?
    return size == 0
  end
end
