class CreateVeRelationShips < ActiveRecord::Migration[5.0]
  def change
    create_table :ve_relation_ships do |t|
      t.integer :vending_id
      t.integer :drink_id
      t.integer :temp
      t.integer :value

      t.timestamps
    end
  end
end
