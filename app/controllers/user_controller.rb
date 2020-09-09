class UserController < ApplicationController

  def create
    @user = User.new(strong_params)

    if @user.save
      redirect_to success_path, date: 'Tuesday, Sept 15, 2020'
    else
      render 'pages/home'
    end
  end

  private

  def strong_params
    params.require(:user).permit(:name, :email, :phone)
  end

end
