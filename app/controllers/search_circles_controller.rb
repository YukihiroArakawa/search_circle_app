class SearchCirclesController < ApplicationController
  def index
    
    @circles = Circle.all
    puts @genres = Genre.where("id==0")
    puts "ジャンルの名前は、#{@genres}"
    puts @genres

    if params[:name].present? && params[:genre_id].empty?
      puts "名前は指定,ジャンルは未指定"
      @circles = @circles.where('name LIKE ?',"%#{params[:name]}%") 
    elsif params[:name].present? && params[:genre_id].present?
      puts "名前とジャンルが指定"
      @circles = @circles.where('name LIKE ?',"%#{params[:name]}%").where(genre_id: "#{params[:genre_id]}") 
    else "ジャンルだけ指定"
      @circles = @circles.where(genre_id: "#{params[:genre_id]}") 
    end

  
  end

  def search_by_name

  end

  def search_by_genre

  end
end
