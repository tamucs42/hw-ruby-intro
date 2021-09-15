# When done, submit this entire file to the autograder. Ignore this

# Part 1

def sum arr
  # YOUR CODE HERE
  arr.sum
  
end

def max_2_sum arr
  # YOUR CODE HERE
  arr.max(2).sum
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  #arr.any?{|x| arr.include?(n-x)}
  for i in arr.combination(2) do
    if i.sum == n then
      return true
    end
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, ".concat(name)
end

def starts_with_consonant? s
  # YOUR CODE HERE
  # try except
  begin
    if s[0].match?(/[A-Za-z]/) and ["a", "e", "i", "o", "u"].include?(s[0].downcase) == false
      return true
    else return false
    end
  rescue
    return false
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s.split(" ").length() < 1 
    return false
  end
  
  for i in s.split(" ") do
    if i !~ /\d+/
      return false
    end
    if i.each_char.all?{|x| x.match?(/[01]/)} and i.to_i%4 == 0
      next
    else return false
    end
  end
  return true
end

# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize(isbn0, price0)
    if isbn0 == '' or price0.to_f <= 0
      raise ArgumentError.new("Invalid ISBN")
    elsif price0.to_f <= 0
      raise ArgumentError.new("Invalid price")
    end
    @isbn = isbn0
    @price = price0
  end
  
  attr_accessor :isbn, :price
  
  def isbn
    @isbn
  end
  
  def isbn=(new_isbn)
    if new_isbn == ''
      raise ArgumentError.new("Invalid ISBN")
    end
    @isbn = new_isbn
  end
  
  def price
    @price
  end
  
  def price=(new_price)
    if new_price.to_f <= 0
      raise ArgumentError.new("Invalid price")
    end
    @price = new_price
  end
  
  def price_as_string
    return "$" + '%.2f'%@price
  end
end
