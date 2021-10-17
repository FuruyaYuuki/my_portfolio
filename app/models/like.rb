class Like < ApplicationRecord
  
  # association
  belongs_to :question
  belongs_to :user
  
end
