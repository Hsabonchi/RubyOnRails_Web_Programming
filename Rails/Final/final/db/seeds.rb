# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Plane.create!(:manufacturer =>"Boeing" ,:model =>"747-100" ,:seatts =>400)
Plane.create!(:manufacturer =>"Boeing" ,:model =>"737-700" ,:seatts =>128)
Plane.create!(:manufacturer =>"Airbus" ,:model =>"A330" ,:seatts =>350)
Plane.create!(:manufacturer =>"Airbus:" ,:model =>"A321" ,:seatts =>135)

Planeflight.create!(:airline =>"United" ,:number =>101 ,:fromcity =>"LosAngeles",:tocity => "Tokyo")
Planeflight.create!(:airline =>"SouthWest" ,:number =>3085 ,:fromcity =>"Seattle",:tocity => "Boston")
Planeflight.create!(:airline =>"American" ,:number =>31 ,:fromcity =>"Hong kong",:tocity => "London")
Planeflight.create!(:airline =>"Alaska" ,:number =>760 ,:fromcity =>"Burbamk",:tocity => "Seattle")
