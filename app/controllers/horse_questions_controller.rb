class HorseQuestionsController < ApplicationController
  def index
    @horse_questions = HorseQuestion.all
    render json: @horse_questions, except: [:created_at, :updated_at]
  end

  def create
    # pull a random horse
    quiz = Quiz.find_by(id: params[:quiz_id])
    horse_question = HorseQuestion.createHorseQuestion(quiz)
    render json: horse_question, except: [:created_at, :updated_at]
  end

  private

  def find_horse_question
    @horse_question = HorseQuestion.find params[:id]
  end

  def horse_question_params
    params.require(:horse_question).permit(:quiz_id)
  end
end