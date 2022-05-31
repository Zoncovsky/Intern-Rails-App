class RemoveColumnProducts < ActiveRecord::Migration[6.1]
  def change
    remove_column :products, :name_product
  end
end
