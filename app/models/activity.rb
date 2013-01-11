class Activities < ActiveRecord::Base
  validates :person_id, :event_id, presence: true
  
  belongs_to :person
  belongs_to :event
   
  attr_accessible :person_id, :event_id
end