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
    flash[:success] = "質問が投稿されました！"
    redirect_to question_url :id => @circle_id, :name=>@circle_name
  end

  def update
    question = Question.find(params[:id])
    question.update!(question_params)
    @circle_id=params[:circle_id]
    questioned_circle= Circle.find_by(id:@circle_id)
    @circle_name=questioned_circle.name
    @questions = Question.where(circle_id:@circle_id)
    flash[:success] = "「#{question.question_text}」に回答しました！"
    redirect_to question_url :id => @circle_id, :name=>@circle_name
  end

  private
    def question_params
      params.permit(:id,:circle_id,:question_text,:answer_text)
    end
end
