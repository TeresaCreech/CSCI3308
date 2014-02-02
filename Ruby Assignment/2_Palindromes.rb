# Part2: Palindromes
def palindrome?(string)
    input = string.downcase.gsub(/\W/, '')       # Remove any non-word character
    reverse = input.reverse                      # Reverse the string
    puts input == reverse                        # Compare strings
end

palindrome?("A man, a plan, a canal -- Panama")  # => true
palindrome?("Madam, I'm Adam!")                  # => true
palindrome?("Abracadabra")                       # => false
