class Visitor < ApplicationRecord
  has_many :forests
  has_many :animals, through: :forests
end
