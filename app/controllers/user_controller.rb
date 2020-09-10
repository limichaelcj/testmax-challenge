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
    data = params.require(:user).permit(:full_name, :email, :pnum)
    names = data[:full_name].split(/\s+/)
    data[:first_name] = names[0]
    data[:last_name] = names[1]
    data
  end

end
