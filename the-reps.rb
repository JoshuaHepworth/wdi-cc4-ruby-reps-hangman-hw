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
		sentence "s" == "th"
	elsif accent == "elmor" 
		sentence "r" == "w"
	end
end

# p toonify ("daffy", "so you smell like sausage")

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
letters = ['now i know what a tv dinner feels like']

letters.each do |word|
	p word
end


def letter_reverse str
	str.each
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

p longest(["oh", "good", "grief"])
p longest(["Nothing" , "takes", "the", "taste", "out", "of", "peanut", "butter", "quite", "like", "unrequited", "love"])

