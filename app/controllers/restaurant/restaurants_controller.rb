class Restaurant::RestaurantsController < ApplicationController
  # GET /restaurant/restaurants
  # GET /restaurant/restaurants.json
  def index
    @restaurant_restaurants = Restaurant::Restaurant.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @restaurant_restaurants }
    end
  end

  # GET /restaurant/restaurants/1
  # GET /restaurant/restaurants/1.json
  def show
    @restaurant_restaurant = Restaurant::Restaurant.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @restaurant_restaurant }
    end
  end

  # GET /restaurant/restaurants/new
  # GET /restaurant/restaurants/new.json
  def new
    @restaurant_restaurant = Restaurant::Restaurant.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @restaurant_restaurant }
    end
  end

  # GET /restaurant/restaurants/1/edit
  def edit
    @restaurant_restaurant = Restaurant::Restaurant.find(params[:id])
  end

  # POST /restaurant/restaurants
  # POST /restaurant/restaurants.json
  def create
    @restaurant_restaurant = Restaurant::Restaurant.new(params[:restaurant_restaurant])

    respond_to do |format|
      if @restaurant_restaurant.save
        format.html { redirect_to @restaurant_restaurant, notice: 'Restaurant was successfully created.' }
        format.json { render json: @restaurant_restaurant, status: :created, location: @restaurant_restaurant }
      else
        format.html { render action: "new" }
        format.json { render json: @restaurant_restaurant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /restaurant/restaurants/1
  # PUT /restaurant/restaurants/1.json
  def update
    @restaurant_restaurant = Restaurant::Restaurant.find(params[:id])

    respond_to do |format|
      if @restaurant_restaurant.update_attributes(params[:restaurant_restaurant])
        format.html { redirect_to @restaurant_restaurant, notice: 'Restaurant was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @restaurant_restaurant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /restaurant/restaurants/1
  # DELETE /restaurant/restaurants/1.json
  def destroy
    @restaurant_restaurant = Restaurant::Restaurant.find(params[:id])
    @restaurant_restaurant.destroy

    respond_to do |format|
      format.html { redirect_to restaurant_restaurants_url }
      format.json { head :ok }
    end
  end
end
