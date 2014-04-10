def is_multiple_of_three?(number)
  number % 3 == 0
end

def is_multiple_of_five?(number)
  number % 5 == 0
end

def multiples_of_three(numbers)
  numbers.select{ |number| is_multiple_of_three?(number) }
end

def multiples_of_five(numbers)
  numbers.select{ |number| is_multiple_of_five?(number) }
end

def sum(numbers)
  numbers.inject{ |sum, number| sum + number }
end

def multiples_of_three_and_five(numbers)
  [multiples_of_three(numbers), multiples_of_five(numbers)].flatten.uniq.sort
end

def sum_all_multipliers_of_3_and_5(range)
  numbers = (1...range).to_a
  sum(multiples_of_three_and_five(numbers))
end

puts sum_all_multipliers_of_3_and_5(10)
puts sum_all_multipliers_of_3_and_5(1000)
