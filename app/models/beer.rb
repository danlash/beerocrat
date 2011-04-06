class Beer < ActiveRecord::Base
	validates :name,	:presence => true
	
	def untap
		self.date_emptied = Time.now
	end
	
	def tap
		self.date_tapped = Time.now
	end
end
