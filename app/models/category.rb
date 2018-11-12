class Category < ApplicationRecord
  belongs_to :user, required: false
  belongs_to :schedule, required: false
  has_many :activities
end
