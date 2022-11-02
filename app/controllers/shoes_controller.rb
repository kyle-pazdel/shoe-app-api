class ShoesController < ApplicationController
  def index
    @shoes = Shoe.all.includes(:shoe_sizes, :sizes)

    render template: "shoes/index"
  end

  def show
    @shoe = Shoe.find_by(id: params[:id])

    render template: "shoes/show"
  end

  def create
    @shoe = Shoe.new(shoe_params)
    if @shoe.save
      i = 1
      8.times do
        ShoeSize.create(shoe_id: @shoe.id, size_id: i)
        i += 1
      end
    end
    render template: "shoes/show"
  end

  def update
    @shoe.name = shoe.name || params[:name]
    @shoe.color = shoe.color || params[:color]
    @shoe.style = shoe.style || params[:style]
    @shoe.description = shoe.description || params[:description]
    @shoe.image = shoe.image || params[:image]
    render template: "shoes/show"
  end

  private

  def shoe_params
    params.require(:shoe).permit(:name, :color, :style, :description, :image)
  end
end
