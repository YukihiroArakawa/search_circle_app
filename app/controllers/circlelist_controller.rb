class CirclelistController < ApplicationController
  def index
    @circles = Circle.all.order(genre_id:"ASC")
    @genres = Genre.all
  end
end
