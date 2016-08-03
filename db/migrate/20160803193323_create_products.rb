class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.integer :quantity
     

      t.timestamps null: false
    end
    
    add_index :products, :name
  end
end
