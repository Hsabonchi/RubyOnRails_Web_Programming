class Course < ApplicationRecord
  validates_presence_of :name
  validates_numericality_of :portion
  validates_presence_of :unitofmeasure
  validates_inclusion_of :unitofmeasure, :in => ['ounces','pounds','grams','kilograms']
  validates_presence_of :calories
  validates_presence_of :meal
  validates_numericality_of :portion ,:greater_than =>  -1
end
