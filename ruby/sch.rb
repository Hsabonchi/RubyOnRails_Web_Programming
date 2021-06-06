 begin
schedule= Hash.new()
# the hash values are now Symbols
schedule = {"Mo" => ["   8:00-11:00","  11:30-200"],"Tu"=>"10-1:30","We"=>["8:00-1:00","1:30-3:30"],"Tur"=>"10-1:30",
"Fr"=>"8:00-12:30"}

#schedule.each do |key, value|
  #puts "#{key} mapped to #{value}"
#end


puts" Show my schedule   [Mo] [Tu]  [We] [Th]  [Fr]   [Q] Quit"
answer = gets.chomp

 puts schedule[answer]
end while (answer !='Q')
