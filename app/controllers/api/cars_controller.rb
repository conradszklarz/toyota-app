class Api::CarsController < ApplicationController
  def index
    @cars = Car.all
    render 'index.json.jbuilder'
  end

  def show
    car_id = params(:id)
    @car = Car.find(car_id)
    render 'show.html.erb'
  end

  def create
    @car = Car.new(
                  make: params[:make],
                  model: params[:model],
                  price: params[:price],
                  image_url: params[:image_url]
                  )
    @car.save
    render 'show.json.jbuilder'
  end

  def update 
    car_id = params[:id]
    @car = Car.find(car_id)

    @car.make = params[:make] || @car.make
    @car.model = params[:model] || @car.model
    @car.price = params[:price] || @car.price
    @car.image_url = params[:image_url] || @car.image_url 
    @car.save
    render 'show.json.jbuilder'
  end 

  def destroy
    car_id = params[:id]
    @car = Car.find(car_id)
    @car.destroy
    render json: {message: "Car successfully destroyed."}
  end  
end
