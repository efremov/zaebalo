class UsersController < ApplicationController
  def show
    @user = User.find(params[:id]) 
    @personal_info = @user.personal_info
    @projects = @user.projects.page(params[:page]).per_page(10)
    @favorite_projects = @user.projects.page(params[:page]).per_page(10)
    @friends = @user.friends
    respond_to do |format|
      format.html # show.html.er
      format.json { render json: @user }
      format.js
    end
	
  end
   def define_user
    current_user.identity = 'user'
    current_user.save
    respond_to do |format|
      format.html { redirect_to user_path(current_user)}
    end
  end
  def define_vendor
   current_user.identity = 'partner'
    current_user.save
    respond_to do |format|
      format.html { redirect_to user_path(current_user)}
    end
  end
  def define_maker
    current_user.identity = 'maker'
    current_user.save
    respond_to do |format|
      format.html { redirect_to user_path(current_user)}
    end
  end
end
