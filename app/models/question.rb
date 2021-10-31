class Question < ApplicationRecord

  # association
  belongs_to :user
  has_many :likes, dependent: :destroy
  
  has_one :answer, dependent: :destroy
  
end
