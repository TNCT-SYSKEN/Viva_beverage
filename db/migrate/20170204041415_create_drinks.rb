class CreateDrinks < ActiveRecord::Migration[5.0]
  def change
    create_table :drinks do |t|
      t.integer :genre_id
      t.string :name

      t.timestamps
    end
  end
end
