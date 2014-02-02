# Part2: Palindromes

class String
	def palindrome?
    	input = self.downcase.gsub(/\W/, '')         # Remove any non-word character
    	reverse = input.reverse                      # Reverse the string
    	return input == reverse                        # Compare strings
	end
end

puts "A man, a plan, a canal -- Panama".palindrome?
puts "Madam, I'm Adam!".palindrome?
puts "Abracadabra".palindrome?
