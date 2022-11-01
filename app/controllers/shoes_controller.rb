class ShoesController < ApplicationController
  def index
    @shoes = Shoe.all.includes(:shoe_sizes, :sizes)
    render @shoes.as_json
  end
end
