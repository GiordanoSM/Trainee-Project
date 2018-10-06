class User < ApplicationRecord
	validates :name, presence:true
	validates :last_name, presence:true
	validates :email, presence:true
	validates :password, presence:true
	has_one :adress, dependent: :destroy
	has_many :orders, dependent: :destroy
	has_many :products, dependent: :destroy
end
