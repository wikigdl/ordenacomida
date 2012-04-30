class Restaurant::DishesController < ApplicationController
  # GET /restaurant/dishes
  # GET /restaurant/dishes.json
  def index
    @restaurant_dishes = Restaurant::Dish.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @restaurant_dishes }
    end
  end

  # GET /restaurant/dishes/1
  # GET /restaurant/dishes/1.json
  def show
    @restaurant_dish = Restaurant::Dish.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @restaurant_dish }
    end
  end

  # GET /restaurant/dishes/new
  # GET /restaurant/dishes/new.json
  def new
    @restaurant_dish = Restaurant::Dish.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @restaurant_dish }
    end
  end

  # GET /restaurant/dishes/1/edit
  def edit
    @restaurant_dish = Restaurant::Dish.find(params[:id])
  end

  # POST /restaurant/dishes
  # POST /restaurant/dishes.json
  def create
    @restaurant_dish = Restaurant::Dish.new(params[:restaurant_dish])

    respond_to do |format|
      if @restaurant_dish.save
        format.html { redirect_to @restaurant_dish, notice: 'Dish was successfully created.' }
        format.json { render json: @restaurant_dish, status: :created, location: @restaurant_dish }
      else
        format.html { render action: "new" }
        format.json { render json: @restaurant_dish.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /restaurant/dishes/1
  # PUT /restaurant/dishes/1.json
  def update
    @restaurant_dish = Restaurant::Dish.find(params[:id])

    respond_to do |format|
      if @restaurant_dish.update_attributes(params[:restaurant_dish])
        format.html { redirect_to @restaurant_dish, notice: 'Dish was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @restaurant_dish.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /restaurant/dishes/1
  # DELETE /restaurant/dishes/1.json
  def destroy
    @restaurant_dish = Restaurant::Dish.find(params[:id])
    @restaurant_dish.destroy

    respond_to do |format|
      format.html { redirect_to restaurant_dishes_url }
      format.json { head :ok }
    end
  end
end
