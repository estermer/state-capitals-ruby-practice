#
#
# Initialize new keys in the hashes that store the number of times a user gets a capital correct and the number of times the answer is wrong.
#
#
# If the answer is correct, display a message saying so, and increment the correct key.
# If the answer is wrong, display a message saying so, and increment the wrong key.
# After each prompt, display a message telling the reader how many times the state was answered correctly out of the total number of times answered.
# Once the user has gone through all 50 states, ask them if they'd like to play again.

require_relative 'capitals'

# Your program should prompt the user to identify the capital associated with a given state.


# There should be running tallies on the number of correct and incorrect answers for each state


# After getting through all 50 states one time, users should be asked whether or not they want to play again.


# Make sure the states don't appear in alphabetical order in the prompts. This will make the game a bit more challenging for the user.


# Provide a welcome message to introduce the player to the game.



# Through all 50 states, prompt the user to name the capital of the state.




def game_play
  tally_correct = 0
  tally_incorrect = 0
  play_again = ""
  states = @states.shuffle
  index = 0
  game = true

  puts "Welcome To State Capitals"
  puts "You can hit ENTER to exit the game."

  while game

    question = "What is the capital of #{states[index][:name]}?"
    puts question
    response = gets.chomp.downcase

    # exit while condition
    if response == ""
      game = false
    elsif response == states[index][:capital].downcase
      puts "Your Correct!"
      tally_correct += 1
    elsif response != states[index][:capital].downcase
      puts "Your Wrong!"
      tally_incorrect += 1
    end

    index += 1
  end

  puts "You got #{tally_correct} capitals correct"
  puts "You got #{tally_incorrect} capitals incorrect"
  puts "Would you like to play again? 'yes or no'"
  play_again = gets.chomp

  if play_again == "yes"
    game_play
  else
    puts "Thank you for playing. Good Bye."
  end
end

game_play






























######
