require_relative 'Stack'
require_relative 'Queue'

class JobSimulation
  attr_reader :employed, :waiting, :roll, :waitlist

  def initialize (jobs_available, job_seekers)
    #job_seekers must be larger than jobs_available
    @waiting = job_seekers - jobs_available
    give_jobs(jobs_available)
    create_wait_list
  end

  def give_jobs(jobs_available)
    @number = 1
    @employed = Stack.new
    jobs_available.times do
      @employed.push("Worker \##{@number}")
      @number += 1
    end
    @employed
  end

  def create_wait_list
    @waitlist = Queue.new
    @waiting.times do
      @waitlist.enqueue("Worker \##{@number}")
      @number += 1
    end
    @waitlist
  end


  def cycle
    die_roll = rand(1..6)
    die_roll.times {@waitlist.enqueue(@employed.pop)}
    die_roll.times {@employed.push(@waitlist.dequeue)}
  end

end

## Allows us to run our code and see what's happening:
sim = JobSimulation.new(6,10)

puts "------------------------------"
puts "Before the simulation starts"
puts "Employed: #{sim.employed}"
puts "Waitlist: #{sim.waitlist}"
puts "------------------------------"
print "<enter to cycle>\n"

count = 0
until gets.chomp != ""
  puts "-------Cycle #{count+=1}-------"
  sim.cycle
  puts "Employed: #{sim.employed}"
  puts "Waitlist: #{sim.waitlist}"
end
