class Project < ApplicationRecord
  validates :image, presence: true, format: { with: /\w+.(jpg|jpeg)\z/, message: "Incorrect format for icon !" }
  validates :title, presence: true
  validates :paragraph, presence: true
  validates :link, presence: true
end
