for count in 1..100
  num1 = count % 3
  num2 = count % 5
  if num1 == 0 && num2 == 0
    puts "FizzBuzz"
  elsif num1 == 0
    puts "Fizz"
  elsif num2 == 0
    puts "Buzz"
  else
    p count
  end
end
