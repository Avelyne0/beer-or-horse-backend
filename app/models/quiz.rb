class Quiz < ApplicationRecord
  belongs_to :user
  has_many :horse_questions, dependent: :destroy
  has_many :beer_questions, dependent: :destroy

end
