class Response < ApplicationRecord
  validates :user_id, :response_id, presence: true

  belongs_to :answer_choice,
  class_name: :AnswerChoice,
  primary_key: :id,
  foreign_key: :answer_id

  belongs_to :respondent,
  class_name: :User,
  primary_key: :id,
  foreign_key: :user_id

  has_one :question,
  through: :answer_choice,
  source: :question

  def sibling_responses

  end
end
