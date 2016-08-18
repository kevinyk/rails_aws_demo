class UsersController < ApplicationController
  def index
  end

  def new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id 
    else
      flash[:errors] = @user.errors.full_messages
      redirect_to :back
    end
    redirect_to '/events'
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
  private
    def user_params
      params.require(:user).permit(:first_name, :last_name, :email, :location, :state, :password, :password_confirmation)
    end
end
