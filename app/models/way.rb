class Way < ApplicationRecord
  has_many :tracks
  has_many :pois
end
