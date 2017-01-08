=begin
def translate string_of_words
	vowels = ["a","e","i","o","u"]
	result_array = []

	word_array = string_of_words.split(" ")



	word_array.each do |string|	
		consonant_start = []
		if vowels.include? string[0]
			string = string + "ay"
		else
			consonant_start.push string[0]
			string[0] = ""
			if vowels.include? string[0]
				string = string + consonant_start.join + "ay"
			else
				consonant_start.push string[0]
				string[0] = ""
				string = string + consonant_start.join + "ay"
			end
		end
		result_array.push string
	end




	final_string = result_array.join(" ")


end
=end

def translate string_of_words
	word_array = string_of_words.split(" ")
	result_array = []
	vowels = ["a","e","i","o","u"]

	
	word_array.each do |string|
		consonant_start = []
		while !(vowels.include? string[0])
			if string[0] == "q" && string [1] == "u"
				consonant_start.push string[0]
				consonant_start.push string[1]
				string[0] = ""
			else
				consonant_start.push string[0]
			end
			string[0] = ""
		end
		string = string + consonant_start.join + "ay"
		result_array.push string
	end


	final_string = result_array.join(" ")
	return final_string

end


translate "stupid orion quiet walked there"
