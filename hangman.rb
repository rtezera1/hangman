#!/usr/bin/env ruby



puts "Program goes here..."


puts 'Welcome to Hangman!'






potential_word = ["fish"]

selected_word = potential_word.sample

length_of_word=selected_word.length

guessed_word=''

length_of_word.times do 
	guessed_word<< "_"
end


puts "Word: #{guessed_word}"

# def initialize(Max_chance)
# 		@Max_chance=Max_chance
# end


def substitution(letter, guess_word, selected_word) #f, _____, fish
	counter = 0
	selected_word.each_char do |char|
		if selected_word[counter] == letter  #true f is at 0
		  guess_word[counter] = letter
		end
		counter += 1
	end
end

	counter_c=8

	while guessed_word != selected_word   #______ != "fish"
			print "Guess a single letter (a-z) or the entire word:"
			letter_input=gets.chomp.to_s
			if letter_input.length>=2
				selected_word.match(letter_input)
				if true
					puts "Congratulations, you've guessed the word!"
				end
			elsif selected_word.include?(letter_input)
				substitution(letter_input,guessed_word, selected_word)
			else 
				counter_c-=1	
				if counter_c==0
					puts "You're out of chances, better luck next time..."
					break
				end	
			end
			if guessed_word==selected_word
				puts "Congratulations, you've guessed the word!"
			end
			
		puts "chance remaining: #{counter_c}"
		
	end







# #!/usr/bin/env ruby



# puts "Program goes here..."


# puts 'Welcome to Hangman!'






# potential_word = ["fish"]

# selected_word = potential_word.sample

# length_of_word=selected_word.length

# guessed_word=''

# length_of_word.times do 
# 	guessed_word<< "_"
# end


# puts "Word: #{guessed_word}"

# # def initialize(Max_chance)
# # 		@Max_chance=Max_chance
# # end

# def index_word(target_letter, word, array)
# 	array=[ ]
# 	i=0				
# 	 	word.each do |letter|
# 	 		if letter==target_letter
# 	 			array<<letter[i]
# 	 		else
# 	 			puts "Sorry, no #{letter} found."
# 	 		end
# 	 	end	
# end

# def substitution(array, word, letter)
# 	array.each do |index|
# 		word[index]=letter
# 	end

# end
# 	chance_remaining=chance_remaining
# 	i=0
# 	chance_remaining=8

# 	while guessed_word != selected_word && chance_remaining!=0
# 			print "Guess a single letter (a-z) or the entire word:"
# 			letter_input=gets.chomp.to_s
# 			word_place=[ ]	
# 			if letter_input.length>=2
# 				selected_word.match(letter_input)
# 				if true
# 					puts "Congratulations, you've guessed the word!"
# 				end
# 			elsif selected_word.include?(letter_input)
# 				index_word(letter_input, selected_word,word_place)											
# 			end
# 			substitution(word_place,guessed_word, letter_input)		


# 			chance_remaining-=1	
# 				if chance_remaining=0
# 					puts "You're out of chances, better luck next time..."
# 				end	
# 		puts "chance remaining: #{chance_remaining.to_s}"
		
# 	end




















	# print "Guess a single letter (a-z) or the entire word:"
	# # letter_input=gets.chomp
	
	# if letter_input.length>=2
	# 	selected_word.match(letter_input)
	# else
	# 	selected_word.index(letter_input, length_of_word)
	# end


	# if selected_word.include?(letter_input)
	# 	numer_where_the letter_located=selected_word.index('letter_input')
	# 	guessed_word






# 	# 	puts "Sorry, no #{letter_input} found."

# 	# 	puts"You're out of chances, btter luck next time..."









	# puts "#{num_of_occurance} occurrence(s) of the character #{letter_input}"
















