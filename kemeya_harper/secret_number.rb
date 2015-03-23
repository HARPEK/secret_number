###############################################################################
#
# We're ready to program! To practice our Ruby skills lets create a secret
# number game. In this game players have three tries to guess a secret number
# between 1 and 10.
#
# Here are some guidelines to building your game:
#
#   Intros
#   - Welcome the player to your game. Let them know who created the game.
#   - Ask for the player's name then personally greet them by printing to the
#     screen, "Hi player_name!"
#   - Any good game will communicate the rules. Let the player know they must
#     guess a number between 1 and 10 and that they only have 3 tries to do so.
#
#   Functionality:
#     - Manually specify the secret number in a variable. Choose a random
#       number between 1 and 10.
#     - Ask the user for their guess.
#     - Verify if they were correct. If the player guesses correctly they win
#       the game, they should be congratulated and the game should end.
#     - If they guess incorrectly, give the player some direction. If they
#       guess too high let them know, if they guess too low, let them know.
#     - Don't forget to let your players know how many guesses they have left.
#       Your game should say something like:
#         "You have X guesses before the game is over enter a another number"
#     - If they don't guess correctly after 3 tries, display that the player
#       lost and that the game is over. Be nice and let them know what the
#       `secret_number` was.
#
###############################################################################

secret_number = 6


puts "                 (: NUMBER·GUESS :)"
puts " "
puts "                     Created by:"
puts "                    Kemeya Harper"
puts " "
puts "...................................................."
puts " "
puts "Before the game begins, start by entering your name."
player_name = gets.strip

puts " "
puts " "
puts "Hello #{player_name}! Playing is easy... You have 3 chances to"
puts "guess what the secret number is. Your guesses should"
puts "be between 1 and 10."
puts " "


puts "What is your first guess?"
guess = gets.chomp.to_i
attempts = 3

unless guess == secret_number
  if guess < secret_number
    puts "Sorry, your number is too low."
    attempts -= 1
  elsif guess > secret_number
    puts "Sorry, your number is too high."
    attempts -= 1
  end
  if guess == secret_number
    then puts "YEE HOO! You guessed the secret number on your first try!"
    attempts -= 2
  end
end
puts " "
puts " "
puts "What is your second guess?"
guess = gets.chomp.to_i
attempts = 2
unless guess == secret_number
  if guess < secret_number
    puts "Sorry, your number is too low."
    attempts -= 1
  elsif guess > secret_number
    puts "Sorry, your number is too high."
    attempts -= 1
  end
  if guess == secret_number
    then puts "YEE HOO! You guessed the secret number on your second try!"
    attempts -= 2
  end
end
puts " "
puts " "
puts "What is your final guess?"
guess = gets.chomp.to_i
attempts = 0
unless guess == secret_number
  if guess < secret_number
    puts "Sorry, your number is too low. Better luck next time!"
    attempts -= 1
  elsif guess > secret_number
    puts "Sorry, your number is too high. Better luck next time!"
    attempts -= 1
  end
  if guess == secret_number
    then puts "YEE HOO! You guessed the secret number!"
    attempts -= 2
  end
end







