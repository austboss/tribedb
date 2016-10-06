class CreateSongs < ActiveRecord::Migration[5.0]
  def change
    create_table :songs do |t|
      t.string :name
      t.string :altName
      t.string :album
      t.string :coveredArtist

      t.timestamps
    end
  end
end
