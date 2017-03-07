def guess_number (guess)
  number = 25
  if guess > number
    puts "Guess was too high!"
  elsif guess < number
    puts "Guess was too low!"
  else
    puts "You got it!"
  end
end

guess_number 5
guess_number 26
guess_number 25
