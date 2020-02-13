# app/controllers/authentication_controller.rb

class AuthenticationController < ApplicationController
 skip_before_action :authenticate_request

 def authenticate
 	email= params[:email] 
 	password = params[:password]

 	command = AuthenticateUser.call(params[:email], params[:password])
 	user = User.find_by_email(email)
 	store = nil
 	# if user
 	# 	store = Store.find_by_id(user.store_id)
	# end
  
   command = AuthenticateUser.call(params[:email], params[:password])

   if command.success?
     render json: { user: user, auth_token: command.result }
   else
     render json: { error: command.errors }, status: :unauthorized
   end
 end
end