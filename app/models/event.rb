class Events < ActiveRecord::Base
  validates :name, presence: true
  
  has_many :activities
  
  attr_accessible :name, :location, :date, :time, :repeat
end