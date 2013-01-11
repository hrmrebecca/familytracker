class CreatePeopleEventsActivities < ActiveRecord::Migration
	def up
		create_table  :people do |p|
			p.string  :first_name	:null => false
			p.string  :middle_name
			p.string  :last_name
			p.date	  :birth_date
			p.string  :email_address
			p.integer :phone_number
		end
		add_index :people,:first_name
		
		create_table  :events  do |e|
			e.string  :name		  	:null => false		
			e.string  :location
			e.date	  :date
			e.time    :time
			e.string  :repeat
		end
		add_index :events, :name 
		add_index :events, :date
		
		create_table  :activities  do |a|
			a.integer :person_id	:null => false		
			a.integer :event_id		:null => false
			a.text 	  :notes
		end
		add_index :activities, (:person_id, event_id), :unique => true
	end
				
	def down
		drop_table :people
		drop_table :events
		drop_table :activities
	end
		