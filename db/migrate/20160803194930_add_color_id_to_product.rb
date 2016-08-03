class AddColorIdToProduct < ActiveRecord::Migration
  def change
    add_column :products, :color, :reference
    add_column :products, :size, :reference
    
    
  end
end
