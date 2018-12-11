class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @tvits = @user.tvits.limit(20)
  end
end
