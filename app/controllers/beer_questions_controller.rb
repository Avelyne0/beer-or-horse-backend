class BeerQuestionsController < ApplicationController
  def index
    @beer_questions = BeerQuestion.all
    render json: @beer_questions, except: [:created_at, :updated_at]
  end

  def create
    # pull a random beer
    quiz = Quiz.find_by(id: params[:quiz_id])
    beer_question = BeerQuestion.createBeerQuestion(quiz)
    render json: beer_question, except: [:created_at, :updated_at]
  end

  private

  def find_beer_question
    @beer_question = BeerQuestion.find params[:id]
  end

  def beer_question_params
    params.require(:beer_question).permit(:quiz_id)
  end
end
