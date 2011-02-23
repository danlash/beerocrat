class HomeController < ApplicationController
  def index
  	b = Beer.arel_table
	@current_beer = Beer.where(b[:date_emptied].eq(nil)).first

	respond_to do |format|
      format.html
    end
  end

end
