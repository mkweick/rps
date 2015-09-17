# Constants
OPTIONS = ["R", "P", "S"]

puts "Play Rock, Paper, Scissors!"
# Get player name
puts "What is your name?"
user_name = gets.chomp.capitalize
puts "Let the battle begin, #{user_name}!"
sleep 1.5

# Start game loop
begin
  
  puts "Rock......."
  sleep 0.5
  puts "Paper......"
  sleep 0.5
  puts "Scissors..."
  sleep 0.5
  puts "SHOOT! (R/P/S):"

  # Get random computer choice
  computer  = OPTIONS.sample
  # Get user choice
  player    = gets.chomp.upcase

  # Verify user selection
  while !OPTIONS.include?(player)
    puts "You must select either Rock (R), Paper (P) or Scissors (S). Try again:"
    player  = gets.chomp.upcase
  end

  # Winning case logic, with delays for human playability factor
  case player
  when "R"
    if computer == "R"
      puts "You both picked Rock."
      sleep 1
      puts "It's a tie."
      sleep 1
      puts "It can't end in a tie, play again #{user_name}? (Y/N)"
    elsif computer == "P"
      puts "You picked Rock and the computer picked Paper."
      sleep 1
      puts "Paper wraps Rock. You lose."
      sleep 1
      puts "Don't go out on a loss, play again #{user_name}? (Y/N)"
    else
      puts "You picked Rock and the computer picked Scissors."
      sleep 1
      puts "Rock smashes Scissors. You win!"
      sleep 1
      puts "#{user_name}, play again? (Y/N)"
    end
  when "P"
    if computer == "P"
      puts "You both picked Paper."
      sleep 1
      puts "It's a tie."
      sleep 1
      puts "It can't end in a tie, play again #{user_name}? (Y/N)"
    elsif computer == "S"
      puts "You picked Paper and the computer picked Scissors."
      sleep 1
      puts "Scissors cuts Paper. You lose."
      sleep 1
      puts "Don't go out on a loss, play again #{user_name}? (Y/N)"
    else
      puts "You picked Paper and the computer picked Rock."
      sleep 1
      puts "Paper wraps Rock. You win!"
      sleep 1
      puts "#{user_name}, play again? (Y/N)"
    end
  when "S"
    if computer == "S"
      puts "You both picked Scissors."
      sleep 1
      puts "It's a tie."
      sleep 1
      puts "It can't end in a tie, play again #{user_name}? (Y/N)"
    elsif computer == "R"
      puts "You picked Scissors and the computer picked Rock."
      sleep 1
      puts "Rock smashes Scissors. You lose."
      sleep 1
      puts "Don't go out on a loss, play again #{user_name}? (Y/N)"
    else
      puts "You picked Scissors and the computer picked Paper."
      sleep 1
      puts "Scissors cuts Paper. You win!"
      sleep 1
      puts "#{user_name}, play again? (Y/N)"
    end
  end

  # Get user answer to play again
  play_again = gets.chomp.upcase

# End game unless user opts to play again
end until play_again != "Y"

puts "Thanks for playing, come back soon!"