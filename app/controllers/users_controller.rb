class UsersController < ApplicationController


  def index

  end

  def show
    @skill = Skill.new

  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.save ? (redirect_to home_path) : (render :new)
  end

  def edit
  end

  def update
  end

  def destroy
  end

private

  def user_params
    params.require(:user).permit(:gender, :first_name, :last_name, :mail, :phone_number, :description, :address)
  end

end

