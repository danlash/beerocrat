class HomeController < ApplicationController
  def index
  	b = Beer.arel_table
	@current_beer = Beer.where(b[:date_emptied].eq(nil)).first
	@past_beers = Beer.where(b[:date_emptied].gt(Date.new)).limit(5)
	respond_to do |format|
      format.html
    end
  end

end
