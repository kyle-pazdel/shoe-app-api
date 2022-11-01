class Shoe < ApplicationRecord
  has_many :shoe_sizes
  has_many :sizes, through: :shoe_sizes
end
