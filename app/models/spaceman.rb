class Spaceman < ApplicationRecord
  belongs_to :spaceship
  belongs_to :user

  validates :name, presence: true
  validates :job, inclusion: {
    in: %w[captain advisor pilot engineer]
  }
end
