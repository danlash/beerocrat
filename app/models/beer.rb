class Beer < ActiveRecord::Base
	validates :name,	:presence => true
	
	def untap
		self.date_emptied = Time.now
	end
end
