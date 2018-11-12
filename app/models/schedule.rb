class Schedule < ApplicationRecord
  belongs_to :user, required: false
  has_many :categories
  has_many :activities
end
