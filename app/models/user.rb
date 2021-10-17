class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  # association
  has_many :questions, dependent: :destroy

  has_many :likes, dependent: :destroy
  has_many :like_questions, through: :likes, source: :question
  
  #like
  def own?(object)
    id == object.user_id
  end

  def like(question)
    likes.find_or_create_by(question: question)
  end

  def like?(question)
    like_questions.include?(question)
  end

  def unlike(question)
    like_questions.delete(question)
  end
         
  def update_without_current_password(params, *options)
    params.delete(:current_password)

    if params[:password].blank? && params[:password_confirmation].blank?
      params.delete(:password)
      params.delete(:password_confirmation)
    end

    result = update_attributes(params, *options)
    clean_up_passwords
    result
  end
  
end
