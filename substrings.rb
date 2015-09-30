def substrings(string, dict)
    answer = Hash.new(0)
    sections = string.downcase.split(/\W/)
	#Used Regex to split input into individual words for analysis
    dict.each do |word|
        sections.each do |section|
		#Double loop checking each dictionary entry against each string word
            if section =~ (/#{word}/)
			#Regex checks if any part of the dict word is in the string word
                answer[word] += 1
				#Then adds the instance to the answer hash 
            end
        end
    end
    return answer
end