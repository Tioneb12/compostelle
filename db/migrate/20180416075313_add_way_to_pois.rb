class AddWayToPois < ActiveRecord::Migration[5.1]
  def change
    add_reference :pois, :way, foreign_key: true
  end
end
