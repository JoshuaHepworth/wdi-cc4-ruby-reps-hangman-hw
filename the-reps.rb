## 1. `lengths`

# Write a method `lengths` that accepts a single parameter as an argument, namely an array of strings. The method should return an array of numbers. Each number in the array should be the length of the corresponding string.

words = ["hello", "what", "is", "up", "dude"]
# lengths(words)  # => [5, 4, 2, 2, 4]

words.each do |word|
	# p word.length
end



# --------------------------------
# 2. transmogrifier

# Write a Ruby method called `transmogrifier`
# This method should accept three arguments, which you can assume will be numbers.
# Your method should return the "transmogrified" result

# The transmogrified result of three numbers is the product (numbers multiplied together) of the first two numbers, raised to the power (exponentially) of the third number.

# For example, the transmogrified result of 5, 3, and 2 is `(5 times 3) to the power of 2` is 225.

# Use your method to find the following answers.

# transmogrifier(5, 4, 3)
# transmogrifier(13, 12, 5)
# transmogrifier(42, 13, 7)

def transmogrifier num1,num2,num3
	(num1 * num2) ** num3
end
# p transmogrifier 5,4,3
# p transmogrifier 13,12,5
# p transmogrifier 42,13,7

# ------------------------------------------

## 3. `toonify`

# Write a method called `toonify` that takes two parameters, `accent` and `sentence`.
# - If `accent` is the string `"daffy"`, return a modified version of `sentence` with all "s" replaced with "th".
# - If the accent is `"elmer"`, replace all "r" with "w".
# - Feel free to add your own accents as well!
# - If the accent is not recognized, just return the sentence as-is.

# toonify("daffy", "so you smell like sausage")
# #=> "tho you thmell like thauthage"

def toonify accent, sentence
	if accent == "daffy" 
		sentence.gsub(/s/, "th")
	elsif accent == "elmer" 
		sentence.gsub(/r/, "w")
	end
end

# p toonify("daffy", "so you smell like sausage")

# ---------------------------------------------

## 4. `word_reverse`

# Write a method `word_reverse` that accepts a single argument, a string. The method should return a string with the order of the words reversed. Don't worry
# about punctuation.

# #word_reverse("Now I know what a TV dinner feels like")
# # => "like feels dinner TV a what know I Now"

def word_reverse str
	str.split.reverse.join(' ')
end
# p word_reverse "now i know what a tv dinner feels like"

# -------------------------------------------------------
# 5. letter reverse

# Write a method `letter_reverse` that accepts a single argument, a string. The method should maintain the order of words in the string but reverse the letters in each word. Don't worry about punctuation. This will be very similar to round 4 except you won't need to split them with a space.


# letter_reverse("Now I know what a TV dinner feels like")
# => "woN I wonk tahw a VT rennid sleef ekil"
# letter_reverse("Put Hans back on the line")
# => "tuP snaH kcab no eht enil"
# letters = ['now i know what a tv dinner feels like']

# letters.each do |word|
# 	p word
# end

def letter_reverse str
	original_array = str.split(" ")
	return_array = []
	original_array.each do |str|
		return_array << str.reverse
	end
	return_array.join(" ")
end

# p letter_reverse "now i know what a tv dinner feels like"


# ----------------------------------------------

# 6.Write a method `longest` that accepts a single argument, an array of strings. The method should return the longest word in the array. In case of a tie, the method should return either.


# longest(["oh", "good", "grief"]) # => "grief"
# longest(["Nothing" , "takes", "the", "taste", "out", "of", "peanut", "butter", "quite", "like", "unrequited", "love"])
# => "unrequited"

def longest str
	str.max_by(&:length)
end

# p longest(["oh", "good", "grief"])
# p longest(["Nothing" , "takes", "the", "taste", "out", "of", "peanut", "butter", "quite", "like", "unrequited", "love"])

# ----------------------------------------------------

# 7. * Write a method called `check_prime?` that will test whether a number is Prime. The method will return true if Prime, false if not.

# * Write another method called `get_primes` that will print all the Primes up to an arbitrary limit. For example, if you invoke your method with `get_primes 100`, it will print all the Prime numbers up to and including 100. This method can call on the previous `check_prime?` method.

# > Hints/reminders/notes: A Prime number is a number that is not evenly divisible by another number except 1 and itself. To test whether a number is Prime, you only need to test as far as the **square root** of that number. This is advisable for optimization and testing large numbers.

def check_prime? num
  return false if num <= 1
  Math.sqrt(num).to_i.downto(2).each {|i| return false if num % i == 0}
  true
end

# p check_prime? 2

def get_primes max
	primes_arr = []

	i = 2
	while i < max
		if check_prime?(i)
			primes_arr << i
		end
		i += 1
	end
	primes_arr
end

# p get_primes 100

# man, if only i had known there was a built in method....should have expected that

# ----------------------------------------------------
# HANGMAN!!!!!!

# Make a hangman ruby console game.  You must have a Word class.  You should also have a `word_array` containing a couple dozen words to randomly choose from.  And then use `loop` for the main game logic with repeated guessing, and `break` when the game is over.  

#### Suggested methods for your Word class


# * `initialize` -- perhaps make this take a parameter like `desired_word`

# * `check_letter?` and/or `.contains`

# * `.print_stats`: This could call the three below 

# * `.render` (show with blanks for unguessed letters and letters for guessed letters)

# * `.print_remaining_guesses`

# * `.print_guessed_letters`

word_array = ["Xbox", "Playstation", "Sega", "Gamecube", "Atari", "Nintendo", "Dreamcast", "Gameboy"]

alphabet = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", 
"L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]

class Word
	def initialize desired_word

	end
	def check_letter?

	end
	def print_stats
		print_remaining_guesses
		print_guessed_letters
	end
end



loop do
	print "Hey! would you like to play Hangman? (or, type Q to quit) -> "
	input = gets.chomp

	if input == "q"
		puts "I get it, you're scared. Bye!"
		break
	else
		print "#{input} you say? Well then lets get started! (type P to start game)"
	end
		input = gets.chomp
			if input == "p"
				word_array.each do |x|
					print "_ "
			end
			puts "\n\n"
			alphabet.each do |x|
				print "#{x} "
			end
		end
	end


























