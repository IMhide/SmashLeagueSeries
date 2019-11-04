class Player < ApplicationRecord
  has_one_attached :image
  belongs_to :team
  validates :name, presence: true
  validates :role, presence: true
end
