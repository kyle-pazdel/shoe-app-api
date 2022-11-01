class Size < ApplicationRecord
  has_many :shoe_sizes
  has_many :shoes, through: :shoe_sizes
end
