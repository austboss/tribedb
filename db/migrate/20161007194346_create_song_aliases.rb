class CreateSongAliases < ActiveRecord::Migration[5.0]
  def change
    create_table :song_aliases do |t|
      t.integer :song_id
      t.string :alias

      t.timestamps
    end
  end
end
