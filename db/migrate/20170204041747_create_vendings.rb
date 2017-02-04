class CreateVendings < ActiveRecord::Migration[5.0]
  def change
    create_table :vendings do |t|
      t.float :lat
      t.float :lon
      t.string :func

      t.timestamps
    end
  end
end
