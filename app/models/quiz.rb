class Quiz < ApplicationRecord
  belongs_to :user
  has_many :horse_questions
  has_many :beer_questions

end
