class ChangeNameProducts < ActiveRecord::Migration
  def change
    remove_column :products, :name
    add_column :products, :type, :integer
  end
end
