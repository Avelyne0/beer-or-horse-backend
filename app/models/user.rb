class User < ApplicationRecord
  has_many :quizzes
  has_many :beer_questions, through: :quizzes
  has_many :horse_questions, through: :quizzes

  validates :name, presence: true
  validates :name, length: {minimum: 2}
  validates :name, length: {maximum: 15}

end
