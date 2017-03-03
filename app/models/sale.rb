class Sale < ApplicationRecord
	belongs_to :user
	belongs_to :producto
	accepts_nested_attributes_for :producto
end
