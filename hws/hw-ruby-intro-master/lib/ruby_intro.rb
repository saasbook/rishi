# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.reduce(0, :+)
end

def max_2_sum arr
  if arr.length == 0
    0
  elsif arr.length == 1
    arr[0]
  else
    max1 = -999999999999
    i_max1 = -1
    for i in 0...arr.length
      if arr[i] > max1
        max1 = arr[i]
        i_max1 = i
      end
    end
    arr.delete_at(i_max1)
    
    max2 = -999999999999
    i_max2 = -1
    for i in 0...arr.length
      if arr[i] > max2
        max2 = arr[i]
        i_max2 = i
      end
    end
    arr.delete_at(i_max2)
    
    max1 + max2
  end
end

def sum_to_n? arr, n 
  x = arr.combination(2).find{|x,y| x+y==n}
  if x == nil
    return false
  else
    return true
  end
end

# Part 2

def hello(name)
  "Hello, " + name
end

def starts_with_consonant? s
  if /^[^aeiou\W]/i.match(s) == nil
    return false
  else
    return true
  end
end

def binary_multiple_of_4? s
	if (s.to_s =~ /\b[01]+\b/ && s.to_i % 4 == 0)
		return true
	else
		return false
	end
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price

  def initialize(isbn, price)
    raise ArgumentError if isbn.empty? || price <= 0
    @isbn = isbn
    @price = price
  end

  def price_as_string
    "$%.2f" % @price
  end
end
