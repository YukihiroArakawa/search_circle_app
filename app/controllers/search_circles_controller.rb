class SearchCirclesController < ApplicationController
  def index
    @circles = Circle.all

    #取り敢えず動くけど、リファクタリングをしたほうがいい。
    if params[:name].present? && params[:genre_id].empty?
      @circles = @circles.where('name LIKE ?',"%#{params[:name]}%") 
    elsif params[:name].present? && params[:genre_id].present?
      @circles = @circles.where('name LIKE ?',"%#{params[:name]}%").where(genre_id: "#{params[:genre_id]}") 
    elsif params[:genre_id].present?
      @circles = @circles.where(genre_id: "#{params[:genre_id]}") 
    end
  end
end
