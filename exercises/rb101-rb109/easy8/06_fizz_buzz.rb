
def fizzbuzz(num1, num2)
  arr = []
  num1.upto(num2).each do |num|
    if num % 3 == 0 && num % 5 == 0
      arr << "FizzBuzz"
    elsif num % 3 == 0
      arr << "Fizz"
    elsif num % 5 == 0
      arr << "Buzz"
    else
      arr << num
    end
  end
  arr.join(", ")
end



p fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz