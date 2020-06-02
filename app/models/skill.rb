class Skill < ApplicationRecord
  has_one_attached :icon
  validates :text, presence: true, length: { maximum: 16, too_long: '%{count} characters is the maximum allowed' }
  validates :iconName
end
