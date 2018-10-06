class Payment < ApplicationRecord
  belongs_to :order
  has_one :card, dependent: :destroy
  enum type: [:card, :bill_exchange]
  enum status: [:wainting, :confirmed, :canceled, :refunded]
end
