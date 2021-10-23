class Question < ApplicationRecord

  # association
  belongs_to :user
  has_many :likes
  
  has_one :answer
  
end
