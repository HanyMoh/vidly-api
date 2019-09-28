class CreateGenres < ActiveRecord::Migration[5.2]
  def change
    create_table :genres do |t|
      t.string :name, index: true, null: false, unique: true, limit: 50

      # t.timestamps
    end
  end
end
