
print "CorsairAir Calculator","\n"
begin
print "How far are your flying:"
base =10000
total=0
total=total+base
distcharge=0
first=0

dist = STDIN.gets.chomp.to_i
if(dist<0) 
print " Sorry Charlie!","\n"
print	 "Continue(y/n)? "
ans3 = STDIN.gets.chomp.to_s
next
end


if (dist>250)
distcharge_to_i= (dist/250)*1000	
total =total+distcharge_to_i
end


print "Want first class (y/n):"
ans1 = STDIN.gets.chomp.to_s

if ans1=='y'
first=(base+distcharge_to_i)*0.4	
total=total+first;

elsif ans1=='n'

else

print " Sorry Charlie!","\n"

print	 "Continue(y/n)? "
ans3 = STDIN.gets.chomp.to_s
next
end

print "Flying on a Friday, Saturday or Monday (y/n):"
ans2 = STDIN.gets.chomp.to_s

if ans2=='y'
weekdayTrav=5000
total=weekdayTrav+5000

elsif ans2=='n'
else
print " Sorry Charlie!","\n"

print	 "Continue(y/n)? "
ans3 = STDIN.gets.chomp.to_s
next
end

print " Flying to Canada, Mexico or the Carribean (y/n):"

ans3 = STDIN.gets.chomp.to_s

if ans3=='y'
total=total+ total+7500
elsif ans3=='n'
else
print " Sorry Charlie!","\n"

print	 "Continue(y/n)? "
ans3 = STDIN.gets.chomp.to_s
next
end
	


print base,"\t","base cost","\n" 

if (dist >= 250)
print distcharge_to_i,"\t","distcharge","\n" 
end

if (ans2 == 'y')
print weekdayTrav,"\t","day of the week charge","\n" 
end

if (ans1 == 'y')
print first,"\t","First class charge","\n" 
end

print "You will need " ,total ,"  ","frequent flyer miles for this ticket. Enjoy your trip!","\n"

print	 "Continue(y/n)? "

ans3 = STDIN.gets.chomp.to_s

end while (ans3 =='y')


	