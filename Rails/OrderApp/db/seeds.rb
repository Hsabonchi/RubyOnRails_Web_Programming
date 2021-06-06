# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Representative.create!( :last_name => 'Rogler', :first_name => 'Harold', :region => 'SW', :hire_date => '05-JAN-1999', :phone => '(310) 456-7890' )
Representative.create!( :last_name => 'Higgins', :first_name => 'Heather', :region => 'SE', :hire_date => '16-DEC-1991', :phone => '(404) 524-8472' )
Representative.create!( :last_name => 'Sullivan', :first_name => 'Peter', :region => 'NE', :hire_date => '21-FEB-1988', :phone => '(305) 734-2987' )
Representative.create!( :last_name => 'Speed', :first_name => 'Kristen', :region => 'MW', :hire_date => '14-JUN-1990', :phone => '(708) 823-8222' )
Representative.create!( :last_name => 'Sigafoos', :first_name => 'Alex', :region => 'NW', :hire_date => '05-MAR-2001', :phone => '(310) 123-7890' )

Inventory.create!( :description => 'Hand Scanner',  :quantity_on_hand => 191 )
Inventory.create!( :description => 'Modem',  :quantity_on_hand => 453 )
Inventory.create!( :description => 'Hard Drive',  :quantity_on_hand => 294 )
Inventory.create!( :description => 'Printer pack',  :quantity_on_hand => 676 )
Inventory.create!( :description => 'CD-ROM drive',  :quantity_on_hand => 817 )
Inventory.create!( :description => '3 1/2" disk holder',  :quantity_on_hand => 982 )
Inventory.create!( :description => 'Sound Card',  :quantity_on_hand => 0 )
Inventory.create!( :description => 'Mouse',  :quantity_on_hand => 296 )
Inventory.create!( :description => "Rogler's DSL",  :quantity_on_hand => 152 )
