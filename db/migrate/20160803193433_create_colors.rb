class CreateColors < ActiveRecord::Migration
  def change
    create_table :colors do |t|
      t.string :name
      t.belongs_to :product

      t.timestamps null: false
    end
    
    add_index :colors, :name
  end
end
