class QuestionsController < ApplicationController
  def index 
    puts "--------------------"
    @circle_id=params[:id]
    @circle_name=params[:name]
    puts @circle_id
    puts @circle_name
    puts "--------------------"
    @questions = Question.where(circle_id:@circle_id)
    render 'question'
  end

  def show
    @questions = Question.where(circle_id:@circle_id)
  end

  def create
    question = Question.new(question_params)
    question.save!
    @circle_id=params[:circle_id]
    questioned_circle= Circle.find_by(id:@circle_id)
    @circle_name=questioned_circle.name
    @questions = Question.where(circle_id:@circle_id)
    puts "--------------------"
    puts @circle_name
    puts "--------------------"
    render 'question'
  end

  private
    def question_params
      params.permit(:circle_id,:question_text,:answer_text)
    end
end
