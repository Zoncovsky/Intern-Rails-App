class CreateMenus < ActiveRecord::Migration[6.1]
  def change
    create_table :menus do |t|
      t.string :title
      t.decimal :price, default: 0
      t.string :image

      t.timestamps
    end
  end
end
