def caesar_cipher(text, shift)
	alphabet = ('a'..'z').to_a
	newText = ""
	text.split("").each do |char|
		unless alphabet.include?(char.downcase)
			newText << char
		else
			newChar = alphabet[(alphabet.index(char.downcase) + shift) % alphabet.size]
			if char == char.upcase
				newText << newChar.upcase
			else
				newText << newChar
			end
		end
	end
	return newText.strip
end

print caesar_cipher("  This isn't a @#$%^&-*<>?/[} DRILL!  ", 5)