class Order < ApplicationRecord
  belongs_to :customer
  has_many :order_items, dependent: :destroy

  enum payment_method: { credit_card: 0, transfer: 1 }

  enum payment_status: { waiting: 0, confirmation: 1, production: 2, preparating: 3, finishing: 4 }
end
