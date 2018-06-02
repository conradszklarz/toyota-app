class Api::CarsController < ApplicationController
  def all_cars
    @cars = Car.all
    render 'all_cars.json.jbuilder'
  end

  def first_car
    @car = Car.first
    render 'first.json.jbuilder'
  end

  def second_car
    @car = Car.find(2)
    render 'second.json.jbuilder'
  end  
end
