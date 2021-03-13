class QuestionsController < ApplicationController
  
  def index 
    puts "This is index action of questions controller"

    if params[:format]
      @circle_id = params[:format]
    elsif params[:circle_id]
      @circle_id = params[:circle_id] 
    elsif current_circle
      @circle_id = current_circle.id
    else
      @circle_id = params[:id]
    end

    questioned_circle= Circle.find_by(id:@circle_id)
    @circle_name=questioned_circle.name
    
    @questions = Question.where(circle_id:@circle_id)

    #質問をジャンルごとにカウントして円グラフに出力したい
    @q_drink_count = @questions.where(qgenre_id:1).count
    @q_money_count = @questions.where(qgenre_id:2).count
    @q_mood_count = @questions.where(qgenre_id:3).count
    @q_love_count = @questions.where(qgenre_id:4).count
    @q_job_count = @questions.where(qgenre_id:5).count
    @q_study_count = @questions.where(qgenre_id:6).count
    @q_other_count = @questions.where(qgenre_id:7).count
    @q_total_count = @q_drink_count + @q_money_count\
                    + @q_mood_count + @q_love_count\
                    + @q_job_count  + @q_study_count + @q_other_count

    @chart = [['お酒', @q_drink_count], ['お金', @q_money_count],\
              ['雰囲気',@q_mood_count], ['恋愛',@q_love_count],\
              ['就活',@q_job_count],    ['勉強',@q_study_count],['その他',@q_other_count]]
   
  end

  def show
    puts "This is show action of questions controller\r
          *********************************************"
    @questions = Question.where(circle_id:@circle_id)
  end

  def create
    puts "This is create action of questions controller\r
          *********************************************"
    question = Question.new(question_params)
    puts "before saving part ***************************"
    question.save!

    #他のコントローラのパラメタを引き継ぐために,インスタンス変数へ代入
    @circle_id=params[:circle_id]
    questioned_circle= Circle.find_by(id:@circle_id)
    @circle_name=questioned_circle.name

    puts @circle_name

    #質問箱のビューに表示するサークルを指定するために実装
    @questions = Question.where(circle_id:@circle_id)
    puts @questions
   
    flash[:success] = "質問が投稿されました！"
    redirect_to question_url :id => @circle_id, :name=>@circle_name
  end

  def edit
    #@circle = Circle.find_by(id:params[:id])
    #@circle = Circle.find(params[:id])
    @circle = Circle.find(current_circle.id)
    puts "********************************"
    puts "This is edit action of questions"
    puts @circle
    @circle_name=@circle.name
    puts @circle_name
    @questions = Question.where(circle_id:params[:id])

    @q_drink_count = @questions.where(qgenre_id:1).count
    @q_money_count = @questions.where(qgenre_id:2).count
    @q_mood_count = @questions.where(qgenre_id:3).count
    @q_love_count = @questions.where(qgenre_id:4).count
    @q_job_count = @questions.where(qgenre_id:5).count
    @q_study_count = @questions.where(qgenre_id:6).count
    @q_other_count = @questions.where(qgenre_id:7).count
    @q_total_count = @q_drink_count + @q_money_count\
                    + @q_mood_count + @q_love_count\
                    + @q_job_count  + @q_study_count + @q_other_count

    @chart = [['お酒', @q_drink_count], ['お金', @q_money_count],\
              ['雰囲気',@q_mood_count], ['恋愛',@q_love_count],\
              ['就活',@q_job_count],    ['勉強',@q_study_count],['その他',@q_other_count]]
  
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
    #redirect_to question_url :id => @circle_id, :name=>@circle_name
    redirect_to question_url :id => @circle_id
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
      params.permit(:id,:circle_id,:question_text,:answer_text,:qgenre_id)
    end

    # 正しいサークルかどうか確認
    def correct_circle
      @circle = Circle.find(params[:id])
      redirect_to(root_url) unless current_circle?(@circle)
    end
end
