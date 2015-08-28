class UsersController < ApplicationController


  def index
    @users=User.all

  end

  def show
    @skill = Skill.new
    @skills = current_user.skills

  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.save ? (redirect_to home_path) : (render :new)
  end

  def edit
    @user = current_user
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path
  end

  def destroy
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :gender, :phone_number, :description, :address, :email)
  end

end

