class Order < ApplicationRecord
  belongs_to :user
  has_maby :order_details
end
