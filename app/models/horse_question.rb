class HorseQuestion < ApplicationRecord
  belongs_to :horse, dependent: :destroy
  belongs_to :quiz, dependent: :destroy

  def self.createHorseQuestion(quiz)
    random_number = rand(Horse.all.length) + Horse.first.id
    @horse_question = HorseQuestion.create(horse_id: random_number, quiz_id: quiz.id)
  end
end