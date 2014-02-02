# Part5: Anagrams
def combine_anagrams(words)
	# Creates hash where values are arrays of elements that correspond to the sorted character keys
    hash = words.group_by { |element| element.downcase.chars.sort }
    # Return only the values of the hash
    groups = hash.values
end

print combine_anagrams(['cars', 'for', 'potatoes', 'racs', 'four', 'scar', 'creams', 'scream'])
