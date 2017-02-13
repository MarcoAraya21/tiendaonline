class RegistrationsController < Devise::RegistrationsController

  def sign_up_params
     params.require(:user).permit(:email, :Nombre,:password, :type_id, :params)
  end
end