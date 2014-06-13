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

  private

  def answer_params
    params.require(:answer).permit(:user_id, :answer,:question_id)
  end

end
