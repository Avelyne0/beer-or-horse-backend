class Beer < ApplicationRecord
  has_many :beer_questions, dependent: :destroy
end
