class User < ApplicationRecord
  has_many :quizzes
  has_many :beer_questions, through: :quizzes
  has_many :horse_questions, through: :quizzes

end
