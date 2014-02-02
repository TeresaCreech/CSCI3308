# Part11: Blocks

class CartesianProduct 
include Enumerable

	def initialize(a, b)
		@final = Array.new(0)
		
		# Iterate and add to the array
		b.each do |y|
    		a.each {|x| @final.push([x, y])}
		end
		
		return @final
	end

	def each
		@final.each { |index| yield(index) }
	end

end

c = CartesianProduct.new([:a,:b], [4,5])
c.each { |elt| puts elt.inspect }

c = CartesianProduct.new([:a,:b], [])
c.each { |elt| puts elt.inspect }
