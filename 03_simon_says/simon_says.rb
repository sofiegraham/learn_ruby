def echo string
	return string
end

def shout string
	return string.upcase
end


def repeat(string, times=2)
	result = "#{string} "*times
	return result.strip
end

def start_of_word string, position
	return string[0...position]
end

def first_word string
	word_array = string.split(" ")
	return word_array[0]
end

def titleize string
	title_array = []
	little_words = ["the","on","over","and", "is"]
	word_array = string.split(" ")
	
	word_array.each do |word|
		if little_words.include? word.downcase
			word = word
		else
			word = word.capitalize
		end
		title_array.push word
	end	

	#Here I am splitting the string to ensure that the first letter is always capitalized, even if it is a little word.
	final_string = title_array.join(" ").slice(0,1).capitalize + title_array.join(" ").slice(1..-1)

end