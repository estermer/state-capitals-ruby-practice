require_relative 'capitals'

# define a method to be called recursively within itself if the player wants to play again
def game_play

  # variable to contain wrong and right answer totals
  tally_correct = 0
  tally_incorrect = 0
  # create a new instance of a shuffled array of the states
  states = @states.shuffle
  # itterator through our while loop for which state element we are accessing
  index = 0
  # a boolean to exit the game early
  game = true

  #intro the user to the game
  puts "Welcome To State Capitals"
  puts "You can hit ENTER to exit the game."

  # while loop that will keep going until the user changes game to false
  while game

    #ask the user to answer the question and get their response
    question = "What is the capital of #{states[index][:name]}?"
    puts question
    response = gets.chomp.downcase


    if response == ""
      # exit while condition
      game = false
    elsif response == states[index][:capital].downcase
      # correct response
      puts "Your Correct!"
      tally_correct += 1
    elsif response != states[index][:capital].downcase
      #wrong response
      puts "Your Wrong!"
      tally_incorrect += 1
    end

    #increase the index to get the next element in the array
    index += 1
  end

  # after game is over, let the user know their totals
  # ask if they wanna play again
  puts "You got #{tally_correct} capitals correct"
  puts "You got #{tally_incorrect} capitals incorrect"
  puts "Would you like to play again? 'yes or no'"
  play_again = gets.chomp

  # check if the user wants to play again or not
  if play_again == "yes"
    # call game_play to refire the game
    game_play
  else
    # let the game just end
    puts "Thank you for playing. Good Bye."
  end
end

#initialize the game once the file is run
game_play
