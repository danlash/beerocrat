class Beer < ActiveRecord::Base
	validates :name,	:presence => true
	
	def untap(emptied_by)
		self.date_emptied = Time.now
		self.emptied_by = emptied_by
	end
	
	def tap
		self.date_tapped = Time.now
	end
end
