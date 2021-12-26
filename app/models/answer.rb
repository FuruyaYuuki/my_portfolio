class Answer < ApplicationRecord
  
  # association
  belongs_to :question
  belongs_to :admin
  
  # validation
  validates :text, presence: { message: "入力してください" }
  validates :text, uniqueness: { case_sensitive: false, message: "すでに質問されています" }
  
end
