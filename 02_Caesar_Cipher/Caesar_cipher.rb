def solve_cipher(cipher)
	cipher_array = cipher.split('')
	result = []
	cipher_array.each do | letter |
		if letter == "a"
			result << "z"
		else
			shift_left1 = letter.ord-1
			result << shift_left1.chr
		end
	end	
	result.join
end

puts solve_cipher("ifmmp")
#should return "hello"
