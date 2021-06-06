totalfees_to_f=0
semester=''
#function that calculate stusent fees
def comoutefess (noUnit,semesterNo,residency,parkingdec,sticker,id)
    # Here i'm checking the semster ,if %==0 it means ,0(fall),2(spring)
	sem=semesterNo %2
	if residency==0
		totalfees_to_f=noUnit*46
	
	elsif residency==1
		totalfees_to_f=noUnit*335
	end
	if (parkingdec =='y' and  sem==0)
        totalfees_to_f=totalfees_to_f+85
	end
if(parkingdec =='y' and sem ==1)
        totalfees_to_f=totalfees_to_f+45
	end

	if (sticker=='y')
		totalfees_to_f=totalfees_to_f+19.500
	end

	if (id=='y')
		totalfees_to_f=totalfees_to_f+13
	end
#Match Semeter no. to semster name
	case semesterNo

	when 0
	semester='fall'
	totalfees_to_f=totalfees_to_f+19.00
	when 1
	semester='winter'
	totalfees_to_f=totalfees_to_f+16.00	
    when 2
    semester='spring'
    totalfees_to_f=totalfees_to_f+19.00
    when 3
    semester='summer'
    totalfees_to_f=totalfees_to_f+16.00
    			
    end
		
print "For   " ,semester, "  semester, your total fees are $",totalfees_to_f 
end


begin
puts "SMC Fee Calculator"
print "Enter number of units enrolled: "
noUnit=Integer(gets.chomp)

#check noUnit input
if (noUnit <0 or noUnit >18 )
raise " Try aganin, you are going beond the limit"
end

print "Is this Fall[0], Winter[1], Spring[2] or Summer[3] session:"
semesterNo=Integer(gets.chomp)

# checking semesterNo input


print "Are you a state resident[0] or not[1]: "
residency=Integer(gets.chomp)
# checking Residency input

if (residency <0 or residency >= 2 )	
raise " Try aganin, you are going beond the limit"
end


print "Want a parking decal? [y/n]"
parkingdec=STDIN.gets.chomp.to_s
# checking parking Permit input
if  parkingdec=~/[n,y]/ 
else	
raise " Try aganin, you are going beond the limit"
end



print"Want an AS sticker? [y/n]: "
sticker=STDIN.gets.chomp.to_s

# checking Sticker input
if  sticker=~/[n,y]/ 
else	
raise " Try aganin, you are going beond the limit"
end

print "Want an ID card? [y/n]:"
id=STDIN.gets.chomp.to_s

# checking parking ID input
if  id=~/[n,y]/ 
else	
raise " Try aganin, you are going beond the limit"
end

puts comoutefess(noUnit,semesterNo,residency,parkingdec,sticker,id)
rescue 
	puts "Sorry Charlie, you entered a bad Input..."

#puts "All done!"

end



