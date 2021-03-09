class CirclelistController < ApplicationController
  def index
    @circles_sport = Circle.all.where(
                    category:'スポーツ系').order(genre_id:"ASC")
    @circles_culture = Circle.all.where(
                    category:"文化系").order(genre_id:"ASC")
    @genres = Genre.all
  end
end
