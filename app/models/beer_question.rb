class BeerQuestion < ApplicationRecord
  belongs_to :beer
  belongs_to :quiz

  def self.createBeerQuestion(quiz)
    random_number = rand(Beer.all.length) + Beer.first.id
    @beer_question = BeerQuestion.create(beer_id: random_number, quiz_id: quiz.id)
  end

end
