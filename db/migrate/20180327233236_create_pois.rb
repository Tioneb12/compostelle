class CreatePois < ActiveRecord::Migration[5.1]
  def change
    create_table :pois do |t|
      t.string :name
      t.string :address
      t.string :address2
      t.integer :zip_code
      t.string :city
      t.float :pk

      t.timestamps
    end
  end
end
