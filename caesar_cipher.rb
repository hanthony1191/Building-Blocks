def caesar_cipher(text, shift)
	alphabet = ('a'..'z').to_a
	#Created an alphabet range then converted to an array
	newText = ""
	text.split("").each do |char|
		#Broke up text input into individual characters for iteration
		unless alphabet.include?(char.downcase)
		#To prevent errors on and keep special characters 
			newText << char
		else
			newChar = alphabet[(alphabet.index(char.downcase) + shift) % alphabet.size]
			#Shift char using array index and wrap z-a using modulus 
			if char == char.upcase
			#To maintain capitalization 
				newText << newChar.upcase
			else
				newText << newChar
			end
		end
	end
	return newText.strip
	#To eliminate leading and ending spacing
end

print caesar_cipher("  This isn't a @#$%^&-*<>?/[} DRILL!  ", 5)