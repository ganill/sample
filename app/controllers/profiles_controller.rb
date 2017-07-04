class ProfilesController < ApplicationController

	before_action :set_user , only: [:edit, :update]
	def index
		
	end
  
  def edit
 
   @user.build_user_address unless @user.user_address
  end

	def update
 
  if	@user.update(user_params)
    binding.pry
    redirect_to profiles_path, notice: "successfully update your profile"
  else
    render :edit
  end
 
	end

	 private

  def user_params
  	params.require(:user).permit(:email, :password, :password_confirmation, 
      :dob, :pic, user_address_attributes: [:id, :door_no, :city, :street,
       :state, :pincode])
  end	

  def set_user
  	@user = User.find(params[:id])
  end

end
