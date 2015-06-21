class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.time :length
      t.integer :release
      t.integer :videoformat_id
      t.integer :rating_id

      t.timestamps null: false
    end
  end
end
