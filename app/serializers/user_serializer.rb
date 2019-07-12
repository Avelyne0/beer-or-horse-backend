class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :top_score
  has_many :quizzes, serializer: QuizSerializer, include_nested_associations: true
end
