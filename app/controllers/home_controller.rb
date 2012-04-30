class HomeController < ApplicationController
  before_filter :authenticate_user!
  def index
         @dishes = Restaurant::Dish.all
  end

end
