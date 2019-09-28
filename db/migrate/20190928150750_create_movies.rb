class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string :title, index: true, null: false, unique: true, limit: 255
      t.references :genre, null: false, index: true
      t.integer :number_in_stock, null: false, inclusion: 0..100
      t.decimal :daily_rental_rate, null: false, precision: 3, scale: 1

      # t.timestamps
    end
    add_foreign_key :movies, :genres
  end
end
