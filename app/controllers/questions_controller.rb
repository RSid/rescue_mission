class QuestionsController < ApplicationController
  def index
    @questions = Question.all

  end

  def show
    @question = Question.find(params[:id])
    @answers = @question.answers.all.order(is_best: :desc)

    @answer = Answer.new
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

  def edit
    @question = Question.find(params[:id])
  end

  def update
    @question =  Question.find(params[:id])
    if @question.update(question_params)
     redirect_to question_path(@question)
    else
      render :edit
    end
  end

  def destroy
    @question = Question.find(params[:id])

    if @question.destroy
      redirect_to questions_path
    else
      render :show
    end

  end

  private

  def question_params
    params.require(:question).permit(:title, :question, :user_id)
  end

end
