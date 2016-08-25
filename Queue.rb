class Queue
  def initialize
    @queue = queue
  end
  
  def enqueue(element)
    return @queue.push(element)
  end
 
  def dequeue
   return  @queue.shift(element)
  end

  def front
    return @queue.first

  end
 
  def size
    return @queue.length
  end

  def empty?
    return size == 0
  end
end
