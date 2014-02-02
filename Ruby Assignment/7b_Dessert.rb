# Part 7b: Dessert

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

class JellyBean < Dessert
	def initialize(name, calories, flavor)
		@delicious = flavor.downcase == "black licorice" ? false : true
		super(name, calories)
	end
	
	def delicious?
		return @delicious
	end
end

Cake = Dessert.new("Cake", 1500)
puts Cake.healthy?
puts Cake.delicious?

Brownie = Dessert.new("Brownie", 150)
puts Brownie.healthy?
puts Brownie.delicious?

OrangeJellyBean = JellyBean.new("OrangeJellyBean", 100, "Orange")
puts OrangeJellyBean.healthy?
puts OrangeJellyBean.delicious?

BlackLicoriceJellyBean = JellyBean.new("BlackLicoriceJellyBean", 100, "black licorice")
puts BlackLicoriceJellyBean.healthy?
puts BlackLicoriceJellyBean.delicious?
