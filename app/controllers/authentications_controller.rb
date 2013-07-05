class AuthenticationsController < ApplicationController
  def create
    debugger
  auth = request.env["omniauth.auth"]
  user =  Authentication.find_by_provider_and_uid(auth["provider"], auth["uid"]) ||Authentication.create_with_omniauth(auth)
  session[:user_id] = user.id
  redirect_to root_url, :notice => "Signed in!"
 end
  end

