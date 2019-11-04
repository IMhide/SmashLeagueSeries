class Team < ApplicationRecord
  has_one_attached :image

  validates :name, presence: true
  validates :punchline, presence: true
  validates :long_description, presence: true
end
