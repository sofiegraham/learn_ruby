#write your code here
def add number1, number2
	number1 + number2
end

def subtract number1, number2
	number1 - number2
end

def sum array
	final_sum = 0
	array.each do |variable|
		final_sum = final_sum + variable
	end
	final_sum
end

def multiply number1, number2
	number1 * number2
end

def power number1, number2
	number1 ** number2

end

def factorial number1
	result = 1
	while number1 > 0
		result = number1 * result
		number1 = number1 - 1

	end
	result
end
