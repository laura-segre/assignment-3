class PlacesController < ApplicationController

  def index 
    @places = Place.all
    place = params["name"]
end

def show
  # find a Place
  @place = Place.find_by({"name" => params["name"]})
  # render places/show view with details about Place
end
def new
  # render posts/new view with new Post form
end

def create
  # start with a new Post
  @place = Place.new

  @place["name"] = params["name"]

  @place.save

  redirect_to "places"
end

end
