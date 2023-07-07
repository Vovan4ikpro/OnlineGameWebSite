class RegistrationsController < Devise::RegistrationsController
  private

  def sign_up_params
    params.require(:user).permit(:username, :role_id, :birth_date, :email, :password, :password_confirmation, :avatar)
  end

  def account_update_params
    params.require(:user).permit(:username, :role_id,:birth_date, :email, :password, :password_confirmation, :current_password, :avatar)
  end
end
