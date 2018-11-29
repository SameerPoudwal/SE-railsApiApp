class CreateAlbums < ActiveRecord::Migration[5.1]
  def change
    create_table :albums do |t|
      t.string :title
      t.string :artist
      t.integer :year_of_release
      t.string :genre
      t.float :rating

      t.timestamps
    end
  end
end
