class SongAlias < ApplicationRecord
  
  validates :song_id, presence: true
  validates :alias, presence: true
  
  belongs_to :song
  
end
