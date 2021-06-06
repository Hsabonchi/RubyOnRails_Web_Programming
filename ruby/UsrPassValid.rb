puts "CS83R Username/Password Validator"

def checkvalid(password,username)
  flag =true
  if (password.size <8  )
    flag =false
puts "password should be at least 8 charater"
  end

  if (username.size <8  )

puts "username should be at least 8 charater"
  end


 
if password=~ /\d/         # Calling String's =~ method.
  #puts "The String #{password} has a number in it."
else
  flag =false
  puts "The password #{password} requires numeric character."
end

if username=~ /\d/         # Calling String's =~ method.
  #puts "The String #{password} has a number in it."
else
  flag =false
  puts "The username #{username}  requires numeric character."
end

if password=~/[A-Z]/         # Calling String's =~ method.
  #puts "The String #{password} has a Upper cas in it."
else
  flag =false
  puts "The password #{password} requires an uppercase character."
end

if username=~/[A-Z]/         # Calling String's =~ method.
  #puts "The String #{password} has a Upper cas in it."
else
  flag =false
  puts "The username #{username} requires an uppercase character."
end


if password=~/[a-z]/         # Calling String's =~ method.
  #puts "The String #{password} has a Lower case in it."
else
  flag =false
  puts "The password #{password} requires an lowercase character."
end


if username=~/[a-z]/         # Calling String's =~ method.
  #puts "The String #{password} has a Upper cas in it."
else
  flag =false
  puts "The username #{username} requires an lowercase character."
end





#puts "password" ,password
pas=password
 if (password.include? username) 
flag =false
puts "The Password cannot contain the Username"
  #puts "true" 
end

special = "?<>',?[]}{=-)'\s'(*&^%$#`~{}"
regex = /[#{special.gsub(/./){|char| "\\#{char}"}}]/
if password=~ regex
  flag =false
  puts "password has special charater"
end

if username=~ regex
  flag =false
  puts " username has special charater"
end
if flag==true
puts"The Username/Password combination is valid!"
end
end

print "Username:"
username=STDIN.gets.chomp.to_s

print "Password:"
password=STDIN.gets.chomp.to_s

 x=password.size
puts checkvalid(password,username)
 
 