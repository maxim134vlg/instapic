class ProfilesController < ApplicationController
before_action :set_user

  def show
  end

  def subscribe
  	@subscription = current_user.subscription.build
  	@subscription.friend_id = user_id 
  	@subscription.save
  		if @subscription.save
  			redirect_to profile_path(@user), notice "You subscribe to this User!"
  		end
  end

  def unsubscribe
  	@subscription = current_user.subscriptios.find_by_friend_id(@user.id)
  	@subscription.destroy
  	redirect_to profile_path(@user), notice "You unsubscribe to this User!"
  end

 private

 	def set_user
      @user = User.find(params[:id])
    end

end