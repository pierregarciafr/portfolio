class Message < ApplicationRecord
  validates :name, presence: true, length: { maximum: 25 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :from, presence: true, length: { maximum: 50 },
                    format: { with: VALID_EMAIL_REGEX }
  validates :object, presence: true, length: { maximum: 100 }
  validates :content, presence: true, length: { maximum: 255 }
end
