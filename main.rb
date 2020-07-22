require './player'
require './question'

p1 = Player.new('Player 1', 3)
p2 = Player.new('Player 2', 3)
currentPlayer = p1


while p1.lives > 0 && p2.lives > 0
  newQuestion = Question.new(currentPlayer)
  puts "#{currentPlayer.name}: What does #{newQuestion.integer1} plus #{newQuestion.integer2} equal?"
  puts ""
  print ">"
  answer = $stdin.gets.chomp
  puts ""
  actual = newQuestion.result.to_s
  if answer == actual
    puts "#{currentPlayer.name}: YES! You are correct."
    puts ""
  else 
    puts "#{currentPlayer.name}: Seriously? No!"
    puts ""
    currentPlayer.lives -= 1
  end
  puts "P1: #{p1.lives}/3 vs P2: #{p2.lives}/3"
  puts ""
  if currentPlayer == p1
    currentPlayer = p2
  else
    currentPlayer = p1
  end
end

if p1.lives > 0
  puts "#{p1.name} wins with a score of #{p1.lives}/3"
  puts ""
else
  puts "#{p2.name} wins with a score of #{p2.lives}/3"
  puts ""
end

puts "----- GAME OVER -----"
puts ""
puts "Good bye!"
