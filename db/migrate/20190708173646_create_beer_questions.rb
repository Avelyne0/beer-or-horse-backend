class CreateBeerQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :beer_questions do |t|
      t.references :beer, foreign_key: true
      t.references :quiz, foreign_key: true

      t.timestamps
    end

    create_table :horse_questions do |t|
      t.references :horse, foreign_key: true
      t.references :quiz, foreign_key: true

      t.timestamps
    end
  end
end
