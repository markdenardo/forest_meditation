class Animal < ApplicationRecord
  has_many :forests
  has_many :visitors, through: :forests

  def animal_stuff
    "#{self.name} | #{self.species}"
  end
end
