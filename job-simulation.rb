require './Stack.rb'
require './Queue.rb'

waiting = Queue.new
workers = Stack.new

puts "How many people do you have? (Must be greater than 6)"
initial_num = gets.chomp.to_i

1.upto(initial_num) do |n|
  waiting.enqueue(rand(100..999))
end

puts "\nInitial Waiting List #{waiting.store}"

new_hires = waiting.dequeue(6)

new_hires.each do |new_hire|
  workers.push(new_hire)
end

puts "\nWorkers List\n" +
"1st hired: #{workers.store[0]}\n" +
"2nd hired: #{workers.store[1]}\n" +
"3rd hired: #{workers.store[2]}\n" +
"4th hired: #{workers.store[3]}\n" +
"5th hired: #{workers.store[4]}\n" +
"6th hired: #{workers.store[5]}\n"

puts "\nWaiting List #{waiting.store}\n"

puts "\nThree months have passed. Roll the dice? (y/n)"
answer = gets.chomp

until answer == "n"
  dice_num = rand(1..6)
  puts "\nThe dice rolled a #{dice_num}. FIRING TIME!!\n\n"

  new_fires = workers.pop(dice_num)

  new_fires.each do |new_fire|
    waiting.enqueue(new_fire)
  end

  new_fires.each do |new_fire|
    puts "#{new_fire} is fired.\n"
  end

  new_hires = waiting.dequeue(6-(workers.store.length))

  new_hires.each do |new_hire|
    workers.push(new_hire)
  end

  puts "\nWorkers List\n" +
  "1st hired: #{workers.store[0]}\n" +
  "2nd hired: #{workers.store[1]}\n" +
  "3rd hired: #{workers.store[2]}\n" +
  "4th hired: #{workers.store[3]}\n" +
  "5th hired: #{workers.store[4]}\n" +
  "6th hired: #{workers.store[5]}\n"

  puts "\nWaiting List #{waiting.store}"

  puts "\nThree more months have passed. Roll the dice? (y/n)"
  answer = gets.chomp
end
