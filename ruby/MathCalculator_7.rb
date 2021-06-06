array = [] 


def Calculator(answer,array)
avg=0

# ADD TO array
if (answer=='N')
# I read string of Int number
s =STDIN.gets.chomp.to_s

#replace space with empty string
arr=s.gsub(/[[:blank:]]/, '')

# Iterate over each character and push them into array and convert to Integer 
 arr.each_char {|char| array << char.to_i }
end

#CLEAR THE ARRAY
if (answer=='c')
  print stackArray
end

# CALCULATE THE AVERAGE
if (answer=='A')
  i=0
sum = 0
 array.each {|e|sum += e}
 #puts "sum_to_f",sum
 #puts "counter", stackArray.size
avg=sum.to_f/(array.size)
 print "  Average =  ",avg.to_f
end


#CALCULATE THE MEAN
if (answer=='M')
    arrsize=array.length
   array.sort!
    middle= arrsize/2

    if arrsize%2!=0   # if the size of stackArray is odd
    
    print " Median= ", array[middle]
  
  else   # if the size of stackArray is even
   #puts stackArray[middle]
   #puts stackArray[middle-1]
  median =(array[middle]+ array[middle-1])/2.0 
  print " Median=  ", median.to_f
    
  end #if
  
  end
#CALCULATE THE Standard Deviation 
if (answer=='S')
variance=0
sum1=0
array.each {|e|sum1 += e}
mean=sum1/array.size
x = array.inject(0) { |variance, x| variance += ((x -mean ) ** 2)/(array.size).to_f }


print  "Standard Deviation = ",squareRootOfI = Math::sqrt( x.to_f )
  end 




end  #def



print "  Math Calculator " +"\n"

loop do
print "[N]umbers [A]verage [M]edian [S]tandard Deviation [C]lear [Q]uit:"

answer=STDIN.gets.chomp.to_s

if answer =="Q"
 break 
end

puts Calculator(answer,array)

end #LOOP