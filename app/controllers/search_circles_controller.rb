class SearchCirclesController < ApplicationController
  def index
    @circles = Circle.all
    @circles = @circles.where('name LIKE ?',"%#{params[:name]}%").where(genre: "#{params[:genre]}") if params[:genre].present?
    render 'index'
  end

  def search_by_name

  end

  def search_by_genre
  end
end
