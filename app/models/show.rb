class Show < ApplicationRecord
  validates_uniqueness_of :date
end
