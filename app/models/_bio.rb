class Bio < ApplicationRecord
  # has_one_attached :iconCloud
  validates :title, presence: true, length: { maximum: 24 }
  validates :content, presence: true, length: { maximum: 250 }
  validates :icon, presence: true,
                   format: { with: /\w+.svg\z/, message: "Incorrect format for icon !" }
end
