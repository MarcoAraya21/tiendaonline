class Reservation < ApplicationRecord
	belongs_to :producto
	belongs_to :customer
	validates :Codigo,presence: true
end
