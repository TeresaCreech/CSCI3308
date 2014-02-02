# Part6: Glob Match

def glob_match(filenames, pattern)
	# Replace *, ?, and .
  	pattern.gsub!(/[\*\?\.]/, '*' => '.*', '.' => '\.', '?' => '.')
  	
  	# Create regex and match against array returning positives
  	regex = Regexp.new(pattern)
  	filenames.select do |filename|
		filename =~ regex
  	end
end

puts glob_match(["part1.rb", "part2.rb", "part2.rb~", ".part3.rb.un~"], "*part*rb?*")
