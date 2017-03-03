class Reservation < ApplicationRecord
	belongs_to :producto
	belongs_to :customer
end
