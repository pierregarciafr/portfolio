class Skill < ApplicationRecord
  validates :text, presence: true, length: { maximum: 16, too_long: '%{count} characters is the maximum allowed' }
  validates :iconName, presence: true,
                       format: { with: /\w+.svg\z/, message: "Incorrect format for iconName !" }

end
