class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

  def show
    @question = Question.find(params[:id])
  end

  def create
    @question = Question.new(question_params)

    if @question.save
      redirect_to question_path(@question)
    else
      render :new
    end
  end

  def new
    @question =  Question.new()
  end

  private

  def question_params
    params.require(:question).permit(:title, :question, :user_id)
  end

end
