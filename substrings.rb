def substrings(string, dict)
    answer = Hash.new(0)
    sections = string.downcase.split(/\W/)
    dict.each do |word|
        sections.each do |section|
            if section =~ (/#{word}/)
                answer[word] += 1
            end
        end
    end
    return answer
end