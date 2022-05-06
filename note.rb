#Print collection of all odd and even number from one to n.
	num = 10
	even = []
	odd = []
	for i in 1..num do 
		if i%2==0
			even <<i
		else
			odd << i
		end
	end
	puts "All Even Number:-"
	puts even
	puts "All Odd Number:-"
	puts odd

#count given integer.
	num = 123456789
	count = 0
	while num>0
		count = count+1
		num = num/10
	end
	puts count

# Use the each method of Array to iterate over [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], and print out each value.
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

	arr.each{|e| puts e}

	===== or ======

	arr.each do |a|
	  puts a
	end


# Use the each method of Array to iterate over [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], and print out values greater than 5.
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

	arr.each{|a| puts a if a>5}

	# ===== or =====

	arr.each do |a|
	  if a>5
	    puts a
	  end
	end



# Extract all odd numbers into a new array fro given array using select method.
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

	new_array = arr.select do |number|
	  number%2 !=0
	end
	puts new_array

	# ===== or =====

	new_array = arr.select{|number| number % 2 != 0}
	puts new_array



# Append 11 to the end of the original array. Prepend 0 to the beginning.
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

	# Applend 11. 
	arr<<11
	# or
	# arr.push(0)
	puts arr

	# prepand 0
	arr.unshift(0)
	puts arr

# Suppose you have a hash h = {a:1, b:2, c:3, d:4}
	h = {a: 1, b: 2, c: 3, d: 4}
	# Get the value of key `:b`.
	# puts h[:b]

	# Add to this hash the key:value pair `{e:5}`
	h[:e] = 5

	# Remove all key:value pairs whose value is less than 3.5
	  # single line version
	  h.delete_if{|k, v| v < 3.5} 
	  puts h

	  # Multiline Version.
	  h.delete_if do |k, v|
	  v < 3.5
	 end
	 
	 puts h


# Use Ruby's Array method delete_if and String method start_with? to delete all of the strings that begin with an "s" in the following array.
arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
puts arr
puts "_______________modified______________"
# Single line version.
  arr=arr.delete_if{|str| str.start_with?('s', 'i', 'w')}
  puts arr
  
# multiline version.
  arr = arr.delete_if do |str|
    str.start_with?('s')
  end
  puts arr
