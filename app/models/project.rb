class Project < ApplicationRecord
  include Calculation

  has_many :entries
end
