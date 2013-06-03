class FriendsController < ApplicationController

  def new
    @friend = Friend.new
  end
  
  
  def create
    @user = User.find(params[:user_id])  
    current_user.friends << Friend.new(friend_id: params[:user_id])
    respond_to do |format|
      format.html { redirect_to user_path(@user)}
    end
  end
                                        
  def destroy
    @user = User.find(params[:user_id])             
    @friend = Friend.where(user_id: current_user.id, friend_id: @user.id).first
    @friend.destroy
    respond_to do |format|
      format.html { redirect_to user_path(@user)}
    end   
  end
end