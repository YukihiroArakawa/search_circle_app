class Question < ApplicationRecord
  belongs_to :qgenre
  validates :question_text, presence: true 
  validates :question_text, length: { maximum: 140 }
end


