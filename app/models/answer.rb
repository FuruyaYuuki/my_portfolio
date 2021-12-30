class Answer < ApplicationRecord
  
  # association
  belongs_to :question
  belongs_to :admin
  
  # validation
  validates :text, presence: { message: "入力してください" }
  validates :text, uniqueness: { case_sensitive: false, message: "すでに質問されています", allow_nil: true }
  validates_length_of :text, maximum: 200, allow_nil: true
  
end
