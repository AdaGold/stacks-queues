class Queue
  attr_reader :store

  def initialize
    @store = Array.new
  end

  def dequeue(num)
    @store.shift(num)
  end

  def enqueue(element)
    @store << element
  end

  def size
    @store.length
  end

  def empty?
    size == 0
  end
end
