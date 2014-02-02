# Part 7a: Dessert

class Dessert
	def initialize(name, calories)
		@healthy = calories < 200 ? true : false 
	end
	
	def healthy?
		return @healthy
	end
	
	def delicious?
		return true
	end
end

Cake = Dessert.new("Cake", 1500)
puts Cake.healthy?
puts Cake.delicious?

Brownie = Dessert.new("Brownie", 150)
puts Brownie.healthy?
puts Brownie.delicious?
