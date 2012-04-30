class Customer::UsersController < ApplicationController
  # GET /customer/users
  # GET /customer/users.json
  def index
    @customer_users = Customer::User.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @customer_users }
    end
  end

  # GET /customer/users/1
  # GET /customer/users/1.json
  def show
    @customer_user = Customer::User.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @customer_user }
    end
  end

  # GET /customer/users/new
  # GET /customer/users/new.json
  def new
    @customer_user = Customer::User.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @customer_user }
    end
  end

  # GET /customer/users/1/edit
  def edit
    @customer_user = Customer::User.find(params[:id])
  end

  # POST /customer/users
  # POST /customer/users.json
  def create
    @customer_user = Customer::User.new(params[:customer_user])

    respond_to do |format|
      if @customer_user.save
        format.html { redirect_to @customer_user, notice: 'User was successfully created.' }
        format.json { render json: @customer_user, status: :created, location: @customer_user }
      else
        format.html { render action: "new" }
        format.json { render json: @customer_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /customer/users/1
  # PUT /customer/users/1.json
  def update
    @customer_user = Customer::User.find(params[:id])

    respond_to do |format|
      if @customer_user.update_attributes(params[:customer_user])
        format.html { redirect_to @customer_user, notice: 'User was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @customer_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customer/users/1
  # DELETE /customer/users/1.json
  def destroy
    @customer_user = Customer::User.find(params[:id])
    @customer_user.destroy

    respond_to do |format|
      format.html { redirect_to customer_users_url }
      format.json { head :ok }
    end

  end

  def self.new_with_session(params, session)
      super.tap do |user|
        if data = session["devise.facebook_data"] && session["devise.facebook_data"]["extra"]["raw_info"]
          customer_user.email = data["email"]
        end
      end
    end

end
