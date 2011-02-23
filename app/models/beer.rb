class Beer < ActiveRecord::Base
	validates :name,	:presence => true
	
end
