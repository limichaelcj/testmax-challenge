class PagesController < ApplicationController

  # root
  def home
    @user = User.new
  end

  # sign up success
  def success

  end

end
