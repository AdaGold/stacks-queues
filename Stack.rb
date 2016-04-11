class Stack
  attr_reader :store

  def initialize
    @store = Array.new
  end

  def pop(num)
    @store.pop(num).reverse
    #takes off the last item of the array
  end

  def push(element)
    @store << element
    #adds an item to the end of the array
  end

  def size
    @store.length
  end

  def empty?
    size == 0
    #calls size method
  end
end
