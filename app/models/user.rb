class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  belongs_to :type
  accepts_nested_attributes_for :type
  has_many :sales

  devise :database_authenticatable, :registerable,
		 :recoverable, :rememberable, :trackable, :validatable

  
end
