class CreateTracks < ActiveRecord::Migration[5.1]
  def change
    create_table :tracks do |t|
      t.string :name
      t.string :description
      t.string :genre
      t.string :path
      t.boolean :active, default: false

      t.timestamps
    end
  end
end
