class UserprofilesController < ApplicationController
def new
	@userprofile=Userprofile.new
	end

def create
	@userprofile = Userprofile.new(params[:userprofile])
	@userprofile.user_id=current_user.id
	respond_to do |format|
if @userprofile.save
format.html { redirect_to articles_path, :notice => 'profile created' }
else
	format.html { render :action => "new" }
end
end
end

def edit
@userprofile=Userprofile.find_by_user_id(current_user.id)
end

def update
p params[:userprofile]
@userprofile=Userprofile.find_by_user_id(current_user.id)
	if @userprofile.update_attributes(params[:userprofile])
redirect_to articles_path, :notice => "profile successfully updated."
        else
        render :edit
	end
	end
end
