puts "Enter Data?"
text = gets.chomp
frequencies = Hash.new(0)

#Scan through Text   to get  character
# Create a loop through the text array.
# k is the key , v refer to the  hash

text.scan(/[[:alpha:]]/).each_with_object(frequencies){ |k, v| v[k] += 1 }

frequencies = frequencies.sort_by { |k, v| k }

#we need to convert v to str
frequencies.each{|k, v| puts k.capitalize + "  - " + v.to_s + " - " + "*" * v}
#each do |key, value|
  #  print "#{key.capitalize} - #{value}  - #{value}  "

#end
