class PlacesController < ApplicationController

  def index
    # find all Place rows
    @places = Place.all
    # render places/index view
  end
  
  def show
    # find a Place
    @place = Place.find_by({ "id" => params["id"] })
    # find Entries for the Place
    @entries = Entry.where({ "place_id" => @place["id"] })
    # render places/show view with details about Place
  end

  def new
    # render view with new Place form
  end

  def create
    # start with a new Place
    @place = Place.new

    # assign user-entered form data to Places's columns
    @place["city_name"] = params["city_name"]
    @place["date"] = params["date"]
    @place["description"] = params["description"]

    # save Place row
    @place.save

    # redirect user
    redirect_to "/places"
  end

  def edit
    # find a Place
    @place = Place.find_by({ "id" => params["id"] })
    # render view with edit Place form
  end

  def update
    # find a Place
    @place = Place.find_by({ "id" => params["id"] })

    # assign user-entered form data to Places's columns
    @place["city_name"] = params["city_name"]
    @place["date"] = params["date"]
    @place ["description"]= params["description"]

    # save Place row
    @place.save

    # redirect user
    redirect_to "/places"
  end

  def destroy
    # find a Place
    @place = Place.find_by({ "id" => params["id"] })

    # destroy Company row
    @place.destroy

    # redirect user
    redirect_to "/places"
  end

end