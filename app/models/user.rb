class User < ApplicationRecord
  has_many :schedules
  has_many :categories
  has_many :activities, through: :schedules
end
