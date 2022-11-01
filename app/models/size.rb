class Size < ApplicationRecord
  has_many :shoe_sizes, dependent: :destroy
  has_many :shoes, through: :shoe_sizes
end
