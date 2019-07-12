class QuizSerializer < ActiveModel::Serializer
  attributes :id, :score, :user
  belongs_to :user, serializer: UserSerializer, include_nested_associations: true
  # has_many :horse_questions, serializer: UserSerializer
  # has_many :beer_questions, serializer: UserSerializer
end
