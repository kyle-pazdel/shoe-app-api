class ShoesController < ApplicationController
  def index
    @shoes = Shoe.all.includes(:shoe_sizes, :sizes)

    render template: "shoes/index"
  end

  def show
    @shoe = Shoe.find_by(params[:id])

    render json: { message: "It works!" }
  end
end
