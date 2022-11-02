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
    @shoe = Shoe.find_by(id: params[:id])
    @shoe.name = params[:name] || @shoe.name
    @shoe.color = params[:color] || @shoe.color
    @shoe.style = params[:style] || @shoe.style
    @shoe.description = params[:description] || @shoe.description
    @shoe.image = params[:image] || @shoe.image
    @shoe.save
    render template: "shoes/show"
  end

  private

  def shoe_params
    params.require(:shoe).permit(:name, :color, :style, :description, :image)
  end
end
