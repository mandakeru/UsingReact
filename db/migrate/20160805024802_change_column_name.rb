class ChangeColumnName < ActiveRecord::Migration
  def change
    remove_column :products, :product_type
    add_column :products, :product_modelo, :integer
  end
end
