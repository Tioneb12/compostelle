class AddSlugToPoi < ActiveRecord::Migration[5.1]
  def change
    add_column :pois, :slug, :string
    add_index :pois, :slug, unique: true
  end
end
