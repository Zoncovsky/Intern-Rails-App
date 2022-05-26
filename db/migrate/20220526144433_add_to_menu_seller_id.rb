class AddToMenuSellerId < ActiveRecord::Migration[6.1]
  def change
    add_column :menus, :seller_id, :integer
  end
end
