class Horse < ApplicationRecord
  has_many :horse_questions, dependent: :destroy
end
