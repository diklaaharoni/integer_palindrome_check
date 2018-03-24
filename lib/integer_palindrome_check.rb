# Returns true if the input positive integer number forms a palindrome. Returns false otherwise.
def is_palindrome(number)
  return false if number == nil || number < 0
  return true if number < 10
  return true if number == ""

  num = number
  number_length = 0
  while num >= 1
    number_length += 1
    num = num / 10
  end
  num = number
  while number_length > 1
    if num % 10 != num / (10 ** (number_length - 1))
      return false
    else
      num = (num / 10) % (10 ** (number_length - 2))
      number_length -= 2
    end
  end
  return true
end
