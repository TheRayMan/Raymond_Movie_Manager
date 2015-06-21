class CreateVideoformats < ActiveRecord::Migration
  def change
    create_table :videoformats do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
