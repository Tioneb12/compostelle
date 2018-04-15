class CreateWaysTraks < ActiveRecord::Migration[5.1]
  def change
    create_table :ways_traks do |t|
      t.references :ways, foreign_key: true
      t.references :tracks, foreign_key: true

      t.timestamps
    end
  end
end
