class UsersController < ApplicationController\
  # find 'set_user' first before actioning the method
  before_action :set_user, only: %i[ show edit update destroy ]

  def index
    @users = User.all
  end
  
  # always partnered with create method
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
 
    if @user.save!
      UserMailer.with(user: current_user).mailer_created.deliver_later
      sign_out
      redirect_to users_path
    else
      render :new
    end
  end

  def show
    # @user = User.find(params[:id])
  end

  def edit
    # @user = User.find(params[:id])
  end

  def update
    # @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to users_path
    else
      render :edit
    end
   end

  def destroy
    # @user = User.find(params[:id])
    @user.destroy

    redirect_to users_path
  end

  private
  # find which user with id you are at
  def set_user
    @user = User.find(params[:id])
  end

  # allowing the user to create and update the values of the declared keys
  def user_params
    params.require(:user).permit(:name, :password, :email, :role_type, :credit)
  end
end