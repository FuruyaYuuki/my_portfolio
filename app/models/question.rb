class Question < ApplicationRecord

  # association
  belongs_to :user

  has_many :likes, dependent: :destroy
  has_many :users, through: :likes
  
  has_one :answer
  
end
