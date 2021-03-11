class QuestionsController < ApplicationController
  def index 
    @circle_id=params[:id]
    @circle_name=params[:name]
    @questions = Question.where(circle_id:@circle_id)
    render 'question'
  end

  def show
    @questions = Question.where(circle_id:@circle_id)
  end

  def create
    question = Question.new(question_params)
    question.save!

    #他のコントローラのパラメタを引き継ぐために,インスタンス変数へ代入
    @circle_id=params[:circle_id]
    questioned_circle= Circle.find_by(id:@circle_id)
    @circle_name=questioned_circle.name

    #質問箱のビューに表示するサークルを指定するために実装
    @questions = Question.where(circle_id:@circle_id)
   
    flash[:success] = "質問が投稿されました！"
    redirect_to question_url :id => @circle_id, :name=>@circle_name
  end

  def update
    question = Question.find(params[:id])
    question.update!(question_params)

    #ビューのパラメタを引き継ぐために,インスタンス変数へ代入
    @circle_id=params[:circle_id]
    questioned_circle= Circle.find_by(id:@circle_id)
    @circle_name=questioned_circle.name

    #質問箱のビューに表示するサークルを指定するために実装
    @questions = Question.where(circle_id:@circle_id)

    flash[:success] = "「#{question.question_text}」に回答しました！"
    redirect_to question_url :id => @circle_id, :name=>@circle_name
  end

  def destroy
    puts "----------------"
    #formatにちょうどquestions-tableのidがあったので,
    #それで削除するレコードを指定。idを直接していできたらもっと良い
    question=Question.find(params[:format])
    #viewの質問箱のサークルを指定するために,削除する質問のIDを取得
    question_for_circle_id=Question.find(params[:format])
    question.destroy
    puts "----------------"
    flash[:success] = "質問が削除されました"

    #ビューのパラメタを引き継ぐために,インスタンス変数へ代入
    @circle_id=question_for_circle_id.circle_id
    questioned_circle= Circle.find_by(id:@circle_id)
    @circle_name=questioned_circle.name
    
    redirect_to question_url :id => @circle_id, :name=>@circle_name
  end

  private
    def question_params
      params.permit(:id,:circle_id,:question_text,:answer_text)
    end
end
