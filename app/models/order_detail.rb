class OrderDetail < ApplicationRecord
  belongs_to :order
  belongs_to :product
  belongs_to :color
  belongs_to :size
end
