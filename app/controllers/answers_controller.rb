class AnswersController < ApplicationController
  def create
   @question = Question.find(params[:question_id])

    @answer = Answer.new(answer_params)

    @answer.question = @question

    if @answer.save
      redirect_to question_path(@question)
    else
      render 'questions/new'
    end
  end

  def new
    @answer = Answer.new()
  end

  def destroy
    question = Question.find(params[:question_id])
    @answers = question.answers.all

  end

  def update
    @answer =  Answer.find(params[:id])
    if @answer.update(is_best: true)
      Answer.where('NOT id=?', params[:id].to_i).update_all(is_best: false)

      redirect_to question_path(@answer.question)
    else

    end
  end

  private

  def answer_params
    params.require(:answer).permit(:user_id, :answer,:question_id)
  end

end
