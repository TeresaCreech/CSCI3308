# Part3: Word Count
def count_words(string)
	split = string.downcase.split(/\W+/)                    # Downcase then split by one or more non-word characters
	hash = Hash.new(0)                                      # Create new empty hash
	
	split.each { |word|                                     # Iterate through split 
		hash[word] += 1                                     # Add a new key value pair or increment existing one 
	}
	
	puts hash                                               # Print to screen
end

count_words("A man, a plan, a canal -- Panama")             # {"a"=>3, "man"=>1, "plan"=>1, "canal"=>1, "panama"=>1}
count_words("Doo bee doo bee doo")                          # {"doo"=>3, "bee"=>2}
