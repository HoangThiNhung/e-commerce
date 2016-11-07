class Product < ApplicationRecord
  has_many :colors
  has_many :sizes
end
