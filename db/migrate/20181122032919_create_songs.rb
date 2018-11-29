class CreateSongs < ActiveRecord::Migration[5.1]
  def change
    create_table :songs do |t|
      t.string :title
      t.references :album, foreign_key: true
      t.time :length
      t.string :genre
      t.integer :number

      t.timestamps
    end
  end
end
