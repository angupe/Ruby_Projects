num = 0

until num == 101
  result = ""

  if num % 3 == 0
    result = result << "Fizz"
  end

  if num % 5 == 0
    result = result << "Buzz"
  end

  if num.to_s.include? "1"
    result = result << "Bang"
  end

  if result.empty?
    puts num

  else
    puts result
  end

  num += 1

end