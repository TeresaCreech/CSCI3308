# Part10b: Enumberable

module Enumerable
	def palindrome?
		self.reverse == self
	end
end

puts [1,2,3,2,1].palindrome? 
puts [1,2,3,4,5].palindrome? 
