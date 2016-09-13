# A company has six hiring positions with more people wanting jobs than the
# number of available positions.  The company managers decide in order to give
# more people an opportunity to make money; they will allow people to work in
# three-month intervals. The first five people on the waiting list will be hired
# in the order that they are on the waiting list.  The first six people will
# keep these positions for three months.  At the end of three months, the
# manager will roll a dice to determine the number of people who will lose their
# jobs. The company will use the policy of last-hired-first-fired.  For example,
# if the dice roll is 3, the last 3 people hired will lose their jobs to the
# first 3 people on the waiting list. People losing their jobs will be placed on
# the back of the waiting list in the order that they are fired. This process
# will continue for every three-month interval.


#I DID NOT GIVE MYSELF MUCH TIME TO DO THIS.  I WILL PRIORITIZE MY TIME BETTER GOING FORWARD
#I WILL CONTINUE TO WORK ON IT AND REFACTOR IT AS WE GO ON


require 'awesome_print'
require './Stack.rb'
require './Queue.rb'

#CREATES NEW CLASS FROM WHICH TO WREAK HAVOC ON POOR JOB HOPEFULS

class Bad_Hiring_Practices

	def initialize
		puts "UGH" #SHOWS IT'S WORKING
	end


	def roll_dice #LETS THOSE MANAGERS ROLL DICE
		x = (1..6).to_a.shuffle
		# puts x[0]
		puts "dice roll equals #{x[0]}"
		return x[0]
	end
end 


#NOT SURE WHY THE 'REQUIRE /.QUEUE' DIDN'T WORK FOR ME, BUT IT DIDN'T
#SO I INCLUDED THE CLASSES IN THIS FILE
#IT'S MESSY AND I DON'T LIKE IT THIS WAY

class Queue

	def initialize
		@line = Array.new
		puts "WHEE"
	end

	def enqueue(element)
		@line.push(element)
	end

	def dequeue
		@line.shift
	end

	def front
		@line.first
	end

	def size
		@line.length
	end

	def empty?
 		if @line.length == 0 
   		return true
    else 
    	return false
    end
  end

  #MY NEW METHOD FOR MAKING THE WAITING LIST

	def fill_waiting_list(array1)
		array1.length.times do
			enqueue(array1.sample)
		end

		puts @line.length #HELPS SHOW HOW MANY I'VE PUT IN THE WAITING LIST
		# puts @line
		return @line #MAKES THE LIST AVAILABLE SHOULD I NEED IT
	end

	# def clear_waiting_list(queue1, number)
	# 	number.times do
	# 		queue1.shift
	# 		# return queue
	# 	end
	# 	puts "meow"
	# 	puts queue1.length
	# 	enqueue(queue1)
	# end

	# def sample_sixth_hire(queue)
	# 	enqueue(queue.sample)
	# 	puts "woof"
	# 	puts @line
	# end
end

class Stack #making a Stack class so we can (MUST!) treat arrays like stacks....  Ruby doesn't have stacks otherwise
  def initialize
    @store = Array.new
    puts "YAY"
  end
  
  def push(element)
    @store << element #@store.push(element)   #both pushing and shoveling puts the new item at the end
  end
 
  def pop
    return @store.pop #ruby has implicit return, but writing "return" helps non-Ruby programmers understand

  end

  def top
    return @store.last
  end
 
  def size
    return @store.length
  end

  def empty?
    return @store.empty? #if @store == 0, return false....
  end

#NEW METHOD TO HIRE THE FIRST CANDIDATES
	def hire_first_candidates(number, queue)
		number.times do 
			push(queue[0])
			queue.shift
		end
		@store.flatten
		puts "ooga booga"
		x = queue.size
		puts "waiting list now has #{x} people"
		return queue
		# puts @store.size
	end


#NEW METHOD TO HIRE LATER CANDIDATES

	def hire_later_candidates(queue, number)
		x = queue.sample
		puts x
		number.times do
			push(x)
			x.shift
		end
		y = @store.size
		puts "you have #{y} employees"
		return x
	end

#METHOD TO FIRE THOSE LAST PEOPLE AND ADD THEM TO THE WAITING LIST 

	def fire_hire(number, queue, stack)
		# x = roll_dice
		# puts x
		number.times do
			queue << stack[-1]
			pop
		end
		
		x.times do
			stack.pop
		end
		
		return stack

		
	end

#I'D WANTED TO BREAK THIS FUNCTIONALITY OUT OF THE FIRE_HIRE METHOD, DIDN'T GET TO IT
	def put_to_end_of_line
	end

	def show_hires(stack)
		puts stack
	end
end

#THOUGHT IT'D BE EASIEST TO KNOW THE HIRING POOL

possible_hires = ('a'..'z').to_a

# hiring_pool = Queue.new #PUTS WHEE

waiting_list = Queue.new #PUTS WHEE

employees = Stack.new #PUTS YAY

bad_situation = Bad_Hiring_Practices.new #PUTS UGH

x = bad_situation.roll_dice #PUTS # ROLLED

candidate_names = waiting_list.fill_waiting_list(possible_hires)

employees.hire_first_candidates(5, candidate_names)

# waiting_list.clear_waiting_list(candidate_names, 5)

# puts waiting_list.size
puts employees.size
p employees
employees.hire_last_of_first_six(waiting_list)


# bad_situation.show_hires