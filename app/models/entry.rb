class Entry < ApplicationRecord
  belongs_to :user
  belongs_to :project

  scope :today, lambda { where(date: Date.today) }
end
