class UsersController < ApplicationController

  def new
  end

  def create
    user = User.new(user_params)
    if user.save
      session[:user_id] = user.id
      redirect_to '/'
    else
      if params[:password] != params[:password_confirmation]
        flash[:danger] = "Пароли не совпадают"
      else
        flash[:danger] = "Ошибка"
      end
      redirect_to route_for'signup'
    end
  end

  private def user_params
    params.permit(:name, :email, :password, :password_confirmation)
  end

end