class Project < ApplicationRecord
  has_one_attached :bckgdimage
  # has_many_attached :icons
  # validates :image, presence: true, format: { with: /\w+.(jpg|jpeg)\z/, message: "Incorrect format for icon !" }
  validates :title, presence: true
  validates :paragraph, presence: true
  validates :link, presence: true
end
