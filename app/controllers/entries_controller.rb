class EntriesController < ApplicationController

  def show
    @entry = Entry.find_by({"id" => params["id"]})
    @place = Place.find_by({"id" => @centry["place_id"]})
    # render entries/show view with details about Entry
  end

  def new
    @place = Place.find_by({ "id" => params["place_id"] })
    # render entry/new view with new Entry form
  end

  def create
    # start with a new Entry
    @entry = Entry.new

    # assign user-entered form data to Entry's columns
    @entry["city_name"] = params["city_name"]
    @entry["date"] = params["date"]
    @entry["description"] = params["description"]

    # assign relationship between Entry and Place
    @entry["city_name"] = params["place_id]

    # save Entryrow
    @entry.save

    # redirect user
    redirect_to "/places/place_id"
  end

end

