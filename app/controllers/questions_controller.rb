class QuestionsController < ApplicationController
  def index 
    @circle_id=params[:id]
    @circle_name=params[:name]
    @questions = Question.where(circle_id:@circle_id)

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
    

    @chart = [['お酒', @q_drink_count], ['お金', @q_money_count],['雰囲気',@q_mood_count],['恋愛',@q_love_count],['就活',@q_job_count],['勉強',@q_study_count],['その他',@q_other_count]]
    #@chart = {'2019-06-01' => 100, '2019-06-02' => 200, '2019-06-03' => 150}
    
    puts "*******************************************"
    puts "質問の内訳\r
          お酒  : #{@q_drink_count}件 \r
          お金  : #{@q_money_count}件 \r
          雰囲気 : #{@q_mood_count}件 \r
          恋愛  : #{@q_love_count}件 \r
          就活 : #{@q_job_count}件 \r
          勉強 : #{@q_study_count}件 \r
          その他 : #{@q_other_count}件 \r"
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
      params.permit(:id,:circle_id,:question_text,:answer_text,:qgenre_id)
    end
end
