class UsersController < ApplicationController
# before_filter :authenticate_user!

  def index
    @users = User.all
  end

  def show
    @user = User.find_by(id: params[:id])

    respond_to do |format|
        format.html # show.html.erb
        format.xml { render :xml => @user }
    end
  end

  private

  def user_params
  	params.require(:user).permit(:avatar)
  end
end