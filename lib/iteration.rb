def join_ingredients(src)
  # Given an Array of 2-element Arrays ( [ [food1, food2], [food3, # food4]....[foodN, foodM]]):
  #
  # Build a new Array that contains strings where each pair of foods is
  # inserted into this template:
  #
  # "I love (inner array element 0) and (inner array element 1) on my pizza""
  # As such, there should be a new String for each inner array, or pair
  
  new_array = []
  i = 0
  
  while i < src.length
    inner = src[i]
    new_array << "I love " + inner[0] + " and " + inner[1] + " on my pizza"

    i += 1
  end

  return new_array
end

def find_greater_pair(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # Produce a new Array that contains the larger number of each of the pairs
  # that are in the inner Arrays
  
  larger_nums = []
  i = 0
  
  while i < src.length
    inner = src[i]
    j = 0
    
    while j < inner.length - 1
      num1 = inner[j]
      num2 = inner[j + 1]
      
      if num1 > num2
        larger_nums << num1
      else
        larger_nums << num2
      end

      j += 1
    end
    
    i += 1
  end
  
  return larger_nums
end

def total_even_pairs(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # if both numbers in the pair are even, then add both those numbers to the
  # total
  #
  # As a reminder any number % 2 will return 0 or 1. If the result is 0, then
  # the number was even. Review the operator documentation if you've forgotten
  # this!
  
 even_pairs = []
  i = 0
  
  while i < src.length
    inner = src[i]
    j = 0
    
    while j < inner.length - 1
      num1 = inner[j]
      num2 = inner[j + 1]
      
      if (num1 % 2 == 0) && (num2 % 2 == 0)
        even_pairs << [num1, num2]
      end
      
      j += 1
    end
    
    i += 1
  end
  
  return even_pairs
end
