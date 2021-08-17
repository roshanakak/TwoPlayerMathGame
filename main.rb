require './player.rb'
require './questions.rb'

args = ARGV

p1 = Player.new(args[0])
p2 = Player.new(args[1])

p1.turn = true

while p1.lives > 0 && p2.lives > 0
  name = p1.turn ? p1.name : p2.name
  q = Question.new()

  puts "----- NEW TURN -----"
  puts "#{name}: #{q.question}"
  answer = STDIN.gets.chomp.to_i

  if answer == q.answer
  puts("#{name}: Yes! You are correct!")
  elsif p1.turn
    p1.lives = p1.lives - 1
    puts("#{name}: Seriously? No!")
  elsif p2.turn
    p2.lives = p2.lives - 1
    puts("#{name}: Seriously? No!")
  end

  puts "#{p1.name}: #{p1.lives}/3 vs #{p2.name}: #{p2.lives}/3"

  p1.turn = !p1.turn
  p2.turn = !p2.turn

end

puts "----- GAME OVER -----"
puts p1.lives == 0 ? "#{p2.name} wins with a score of #{p2.lives}/3" : "#{p1.name} wins with a score of #{p1.lives}/3"
puts "Good Bye!"