class Activity < ApplicationRecord
  belongs_to :user, required: false
  belongs_to :schedule
  belongs_to :category, required: false

end
