class Numeric
	@@currencies = {'dollar' => 1, 'yen' => 0.013, 'euro' => 1.292, 'rupee' => 0.019}
	def method_missing(method_id)
		singular_currency = method_id.to_s.gsub( /s$/, '')
		if @@currencies.has_key?(singular_currency)
			self * @@currencies[singular_currency]
		else
			super
		end
	end
	
	def in(currency)
	    # Remove 's' character at end of word if exists
    	singular_currency = currency.to_s.gsub(/s$/, '')
    	
    	# Convert currency
    	return self / @@currencies[singular_currency]
  	end
end

puts 5.dollars.in(:euros)
puts 5.dollars.in(:euro)
