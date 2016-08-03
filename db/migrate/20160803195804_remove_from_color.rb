class RemoveFromColor < ActiveRecord::Migration
  def change
    remove_column :colors, :product_id
    remove_column :sizes, :product_id
  end
end
