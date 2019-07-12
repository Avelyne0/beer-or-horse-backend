class QuizzesController < ApplicationController
  before_action :find_quiz, only: [:show, :edit, :update, :destroy]

  # def self.leaderboard
  #   leaderboard = Quiz.order('score DESC').first(5)
  #   # leaderboard = orderedQuizzes.select(:user_id).distinct.map
  # end

  def index
    quizzes = Quiz.all
    render json: quizzes, except: [:updated_at, :created_at]
  end

  def create
    @quiz = Quiz.create quiz_params
    ActionCable.server.broadcast('quiz_channel', "#{@quiz.user.name} just started a game!")
    render json: @quiz, except: [:updated_at, :created_at]
  end

  def show
    render json: @quiz, except: [:updated_at, :created_at]
  end

  def update
    @quiz.update quiz_params
    ActionCable.server.broadcast('quiz_channel', "#{@quiz.user.name} just reached a score of #{@quiz.score}!")
    render json: @quiz, except: [:updated_at, :created_at]
  end

  def destroy
  end

  private

  def find_quiz
    @quiz = Quiz.find params[:id]
  end

  def quiz_params
    params.require(:quiz).permit(:id, :user_id, :score)
  end
end
