class CreateShows < ActiveRecord::Migration[5.0]
  def change
    create_table :shows do |t|
      t.date :date
      t.integer :venue_id

      t.timestamps
    end
    
    # Add unique constraint to date (PK)
    add_index :shows, :date, :unique => true
  end
end
