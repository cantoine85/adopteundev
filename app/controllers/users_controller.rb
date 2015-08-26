class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @skill = Skill.new

  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end


end
