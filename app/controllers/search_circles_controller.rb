class SearchCirclesController < ApplicationController
  def index
    
    @circles = Circle.all
    if params[:name].present? && params[:genre].empty?
      puts "名前はあるが,ジャンルはempty"
      @circles = @circles.where('name LIKE ?',"%#{params[:name]}%") 
    elsif params[:name].present? && params[:genre].present?
      puts "ジャンルはemptyでない"
      @circles = @circles.where('name LIKE ?',"%#{params[:name]}%").where(genre: "#{params[:genre]}") 
    else 
      @circles = @circles.where(genre: "#{params[:genre]}") 
    end

    render 'index'
  end

  def search_by_name

  end

  def search_by_genre
  end
end
