class User < ApplicationRecord
  has_many :quizzes, dependent: :destroy
  has_many :beer_questions, through: :quizzes, dependent: :destroy
  has_many :horse_questions, through: :quizzes, dependent: :destroy

end
