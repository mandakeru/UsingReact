class CreateSizes < ActiveRecord::Migration
  def change
    create_table :sizes do |t|
      t.string :name
      t.belongs_to :product

      t.timestamps null: false
    end
    
    add_index :sizes, :name
  end
end
