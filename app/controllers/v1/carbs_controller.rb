class V1::CarbsController < ApplicationController
  def index
    carbs = Carb.all
    render json: carbs.as_json
  end

  def create
    carb = Carb.new(
      name: params[:name],
      price: params[:price],
      image_url: params[:image_url],
      description: params[:description]
      )
    carb.save
    render json: carb
  end

  def update
    the_id = params[:id]
    carb = Carb.find_by(id: the_id)
    carb.update(
      {image_url: params[:image_url]
        }
        )

  end

  def destroy
    the_id = params[:id]
    carb = Carb.find_by(id: the_id)
    carb.delete
  end
end
