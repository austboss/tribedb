class Show < ApplicationRecord
  
  validates_uniqueness_of :date
  
  belongs_to :venue
  
end
