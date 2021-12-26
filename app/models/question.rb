class Question < ApplicationRecord

  # association
  belongs_to :user
  has_many :likes, dependent: :destroy
  has_one :answer, dependent: :destroy
  
  # validation
  validates :title, :text, presence: { message: "入力してください" }
  validates :text, uniqueness: { case_sensitive: false, message: "すでに質問されています" }
  validates_length_of :title, maximum: 20
  validates_length_of :text, maximum: 100
  
end
