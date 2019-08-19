class Spaceship < ApplicationRecord
  belongs_to :user

  validates :name, presence: true
  validates :crew, numericality: {
    only_integer: true,
    greater_than: 0,
    less_than: 100
  }
end
