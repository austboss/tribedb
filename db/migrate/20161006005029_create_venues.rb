class CreateVenues < ActiveRecord::Migration[5.0]
  def change
    create_table :venues do |t|
      t.string :name
      t.string :shortName
      t.string :city
      t.string :state

      t.timestamps
    end
  end
end
