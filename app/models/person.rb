class Person < ActiveRecord::Base
  attr_accessible :first_name, :last_name 
  

 has_many :activities
end