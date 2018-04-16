class AddTrackToPois < ActiveRecord::Migration[5.1]
  def change
    add_reference :pois, :track, foreign_key: true
  end
end
