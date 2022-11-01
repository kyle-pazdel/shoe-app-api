class Shoe < ApplicationRecord
  has_many :shoe_sizes, dependent: :destroy
  has_many :sizes, through: :shoe_sizes
end
