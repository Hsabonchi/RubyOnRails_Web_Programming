# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ClientWorkout.create!( :client_name => "Howard", :trainer => "Bill", :duration_mins => 60, :date_of_workout => "2014-07-29", :paid_amount => 50.00 )
ClientWorkout.create!( :client_name => "Howard", :trainer => "Bill", :duration_mins => 90, :date_of_workout => "2014-07-30", :paid_amount => 100.00 )
ClientWorkout.create!( :client_name => "You", :trainer => "Mary", :duration_mins => 120, :date_of_workout => "2014-07-31", :paid_amount => 150.00 )
# The offensive calls have been commented out!
# Let's try creating a workout without specifying a client
# ClientWorkout.create!( :client_name => nil, :trainer => "Bill", :duration_mins => 60, :date_of_workout => "2014-07-29", :paid_amount => 50.00 )
# Let's try creating a workout without specifying a trainer
# ClientWorkout.create!( :client_name => "Howard", :trainer => nil, :duration_mins => 90, :date_of_workout => "2014-07-30", :paid_amount => 100.00 )
# Let's try creating a workout without specifying a paid amount.
# ClientWorkout.create!( :client_name => "You", :trainer => "Mary", :duration_mins => 120, :date_of_workout => "2014-07-31" )
