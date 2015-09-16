require 'active_record'

ActiveRecord::Base.establish_connection(
  adapter:  'sqlite3',
  database: 'db.sqlite3'
)

class AlbumMigration < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.integer :artist_id
      t.string :name
      t.integer :number_in_stock
      t.decimal :price, precision: 5, scale: 2
      t.date :released_on
      t.timestamps null: false
    end

    create_table :artists do |t|
      t.string :name
    end
  end
end
