class RenameTypeToProductType < ActiveRecord::Migration
  def change
    remove_column :products, :type
    add_column :products, :product_type, :integer
  end
end
