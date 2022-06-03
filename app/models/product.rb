class Product < ApplicationRecord

	validates :name_product, :quantity, presence: true
end
