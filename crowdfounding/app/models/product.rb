class Product < ApplicationRecord
  belongs_to :user
  has_many :orders, dependent: :destroy
  validates :title, presence:true
  validates :type, presence:true
  validates :final_date, presence:true
  validates :category, presence:true
  validates :goal, presence:true
  enum type: [:flexible, :all_or_nothing]
  enum category: [:design_tech, :publishing, :games, :food_craft, :music, :comics_illustration, :film, :arts]
end
