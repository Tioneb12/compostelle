class Poi < ApplicationRecord
  extend FriendlyId
  friendly_id :name_and_city, use: :slugged

  def name_and_city
    "#{name} #{city}"
  end
end
