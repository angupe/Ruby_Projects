num = 1
while num <= 100	
	if num % 3 == 0 && num % 5 == 0
		if num.to_s.include? "1"
			puts "FizzBuzzBang"
		else 
			puts "FizzBuzz"	
		end
	elsif num % 3 == 0
		if num.to_s.include? "1"
			puts "FizzBang"
		else 
			puts "Fizz"	
		end
	elsif num % 5 == 0
		if num.to_s.include? "1"
			puts "BuzzBang"
		else 
			puts "Buzz"	
		end
	else
		puts num
	end
	num = num + 1
end
