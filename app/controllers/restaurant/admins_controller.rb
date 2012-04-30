class Restaurant::AdminsController < ApplicationController
  # GET /restaurant/admins
  # GET /restaurant/admins.json
  def index
    @restaurant_admins = Restaurant::Admin.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @restaurant_admins }
    end
  end

  # GET /restaurant/admins/1
  # GET /restaurant/admins/1.json
  def show
    @restaurant_admin = Restaurant::Admin.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @restaurant_admin }
    end
  end

  # GET /restaurant/admins/new
  # GET /restaurant/admins/new.json
  def new
    @restaurant_admin = Restaurant::Admin.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @restaurant_admin }
    end
  end

  # GET /restaurant/admins/1/edit
  def edit
    @restaurant_admin = Restaurant::Admin.find(params[:id])
  end

  # POST /restaurant/admins
  # POST /restaurant/admins.json
  def create
    @restaurant_admin = Restaurant::Admin.new(params[:restaurant_admin])

    respond_to do |format|
      if @restaurant_admin.save
        format.html { redirect_to @restaurant_admin, notice: 'Admin was successfully created.' }
        format.json { render json: @restaurant_admin, status: :created, location: @restaurant_admin }
      else
        format.html { render action: "new" }
        format.json { render json: @restaurant_admin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /restaurant/admins/1
  # PUT /restaurant/admins/1.json
  def update
    @restaurant_admin = Restaurant::Admin.find(params[:id])

    respond_to do |format|
      if @restaurant_admin.update_attributes(params[:restaurant_admin])
        format.html { redirect_to @restaurant_admin, notice: 'Admin was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @restaurant_admin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /restaurant/admins/1
  # DELETE /restaurant/admins/1.json
  def destroy
    @restaurant_admin = Restaurant::Admin.find(params[:id])
    @restaurant_admin.destroy

    respond_to do |format|
      format.html { redirect_to restaurant_admins_url }
      format.json { head :ok }
    end
  end
end
