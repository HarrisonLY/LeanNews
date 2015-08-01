class Event < ActiveRecord::Base

	scope :today, -> { where(start: DateTime.now.beginning_of_day.. DateTime.now.end_of_day) }
	scope :tomorrow, -> { where(start: DateTime.now.beginning_of_day.. DateTime.now.end_of_day) }
	scope :two_days, -> { where(start: DateTime.now.beginning_of_day.. DateTime.now.end_of_day) }

	def free?
		price.blank? || price.zero? 
	end

end
