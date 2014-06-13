class Question < ActiveRecord::Base
  belongs_to :user
  has_many :answers, dependent: :destroy


  validates :user_id, presence: true
  validates :title, length: {minimum: 40}
  validates :question, length: {minimum: 150}

end
