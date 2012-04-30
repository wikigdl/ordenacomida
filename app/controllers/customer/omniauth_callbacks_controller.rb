class Customer::OmniauthCallbacksController < ApplicationController
  def facebook
      # You need to implement the method below in your model
      @customer_user = Customer::User.find_for_facebook_oauth(request.env["omniauth.auth"], current_user)

      if @customer_user.persisted?
        flash[:notice] = I18n.t "devise.omniauth_callbacks.success", :kind => "Facebook"
        sign_in_and_redirect @customer_user, :event => :authentication
      else
        session["devise.facebook_data"] = request.env["omniauth.auth"]
        redirect_to new_user_registration_url
      end
  end
  def self.find_for_facebook_oauth(access_token, signed_in_resource=nil)
      data = access_token.extra.raw_info
      if user = Customer::User.where(:email => data.email).first
        user
      else # Create a user with a stub password.
        Customer::User.create!(:email => data.email, :password => Devise.friendly_token[0,20])
      end
    end
end
