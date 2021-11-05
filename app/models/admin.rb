class Admin < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  # association
  has_many :answers
  has_one_attached :image
  
  # mount
  mount_uploader :avatar, AvatarUploader
  
end
