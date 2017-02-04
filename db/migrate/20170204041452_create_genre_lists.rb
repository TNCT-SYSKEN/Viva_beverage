class CreateGenreLists < ActiveRecord::Migration[5.0]
  def change
    create_table :genre_lists do |t|
      t.string :name

      t.timestamps
    end
  end
end
