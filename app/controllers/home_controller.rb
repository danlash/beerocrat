class HomeController < ApplicationController
  def index
  	b = Beer.arel_table
debugger
	@current_beer = Beer.where(b[:date_tapped].not_eq(nil)).where(b[:date_emptied].eq(nil)).first 

	@upcoming_beers = Beer.where(b[:date_tapped].eq(nil)).where(b[:date_emptied].eq(nil)).limit(5)

	@past_beers = Beer.where(b[:date_tapped].not_eq(nil)).where(b[:date_emptied].not_eq(nil)).limit(5)
	
	respond_to do |format|
      format.html
    end
  end

end
