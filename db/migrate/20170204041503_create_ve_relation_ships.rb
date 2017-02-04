class CreateVeRelationShips < ActiveRecord::Migration[5.0]
  def change
    create_table :ve_relation_ships do |t|
      t.integer :ven_id
      t.integer :dri_id
      t.integer :temp
      t.integer :value

      t.timestamps
    end
  end
end
