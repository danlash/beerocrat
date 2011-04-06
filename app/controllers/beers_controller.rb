class BeersController < ApplicationController
  # GET /beers
  # GET /beers.xml
  def index
    @beers = Beer.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @beers }
    end
  end

  # GET /beers/1
  # GET /beers/1.xml
  def show
    @beer = Beer.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @beer }
    end
  end

  # GET /beers/new
  # GET /beers/new.xml
  def new
    @beer = Beer.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @beer }
    end
  end

  # GET /beers/1/edit
  def edit
    @beer = Beer.find(params[:id])
  end

  # POST /beers
  # POST /beers.xml
  def create
    @beer = Beer.new(params[:beer])

    respond_to do |format|
      if @beer.save
        format.html { redirect_to(:controller => 'home', :action => 'index') }
        format.xml  { render :xml => @beer, :status => :created, :location => @beer }
        format.json { render :json => @beer }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @beer.errors }
      end
    end
  end
  
  # PUT /beers/1
  # PUT /beers/1.xml
  def update
    @beer = Beer.find(params[:id])

    respond_to do |format|
      if @beer.update_attributes(params[:beer])
        format.html { redirect_to(@beer, :notice => 'Beer was successfully updated.') }
      else
        format.html { render :action => "edit" }
      end
    end
  end

  def destroy
    @beer = Beer.find(params[:id])
    @beer.destroy

    respond_to do |format|
      format.html { redirect_to(beers_url) }
    end
  end

  def untap
    @beer = Beer.find(params[:id])
    @beer.untap
    @beer.save #could throw exception, rescue?

    respond_to do |format|
		format.html { redirect_to(:controller => 'home', :action => 'index') }
        format.json { render :json => @beer }
    end
  end
  
  def tap
    @beer = Beer.find(params[:id])
    @beer.tap
    @beer.save #could throw exception, rescue?

    respond_to do |format|
        format.html { redirect_to(:controller => 'home', :action => 'index') }
        format.json { render :json => @beer }
    end
  end
  
  def describe #this is the same as update - cant figure out path to update 
    @beer = Beer.find(params[:id])

    respond_to do |format|
      if @beer.update_attributes(params[:beer])
        format.html { redirect_to(:controller => 'home', :action => 'index') }
        format.json { render :json => @beer }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @beer.errors, :status => :unprocessable_entity }
      end
    end
  end
end
