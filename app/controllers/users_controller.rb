class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @name = @user.name
    @prototype = @user.prototypes
  end
  
  private
  def user_params
    params.require(:users).permit(:name, :profile, :occupation, :position).merge(user_id: params[:id])
  end
end