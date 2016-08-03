class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.references :color, index: true
      t.references :size, index: true

      t.timestamps null: false
    end
    add_foreign_key :products, :colors
    add_foreign_key :products, :sizes
  end
end
