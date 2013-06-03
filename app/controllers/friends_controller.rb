class FriendsController < ApplicationController

  def create
    @user = User.find(params[:id])
    @friend = current_user.create_friend(friend_id: @user.id)
    respond_to do |format|
      format.html { redirect_to user_path(@user)}
    end
  end
                                        
  def destroy
    @user = User.find(params[:id])             
    @friend = Friend.where(user_id: current_user.id, friend_id: @user.id)
    @friend.destroy
    respond_to do |format|
      format.html { redirect_to user_path(@user)}
    end   
  end
end