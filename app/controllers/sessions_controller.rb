class SessionsController < ApplicationController
def create
if user = User.authenticate(params[:email], params[:password])
session[:user_id] = user.id
if user.userprofile.present?
redirect_to articles_path, :notice => "Logged in successfully"
else
redirect_to new_userprofile_path, :notice => "please fill your profile details"
end
else
flash.now[:alert] = "Invalid login/password combination"
#reset_session[:email]
render :action => 'new'
end
end

def destroy
reset_session
redirect_to articles_path, :notice => "You successfully logged out"
end
end
