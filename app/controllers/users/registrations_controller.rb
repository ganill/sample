class Users::RegistrationsController < Devise::RegistrationsController

 def create
 	@user = User.new(user_params)
 	if @user.save
 		redirect_to sign_in_path, notice: "signed up successfully...!"
  else 
 		render :new
 end
 end
 def update
 		if @user.update(user_params)
 		redirect_to profile_path, notice: "user details updated successfully...!"
  else 
 		render :edit
 end
 end
 private

  def user_params
  	params.require(:user).permit(:email, :password, :password_confirmation, :dob, :pic)
  end

end	