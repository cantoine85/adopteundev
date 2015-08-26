class SkillsController < ApplicationController
<<<<<<< HEAD
  before_action :set_user, only: :create

=======
  before_action :set_user , only: [:create]
>>>>>>> c5afac727c015886922242ec8448e470cefc9451

  def index
    @skills = Skill.all
  end

  def new
      @skill = Skill.new
  end

  def edit
  end

  def create
    @skill = Skill.new
    @skill.user = current_user
    if @skill.save
      redirect_to users_path(@user)
    else
      render :new
    end
  end

  def show
  end

  def update
  end


  private

  def set_user
    @user =User.find(params[:user_id])
  end

  def skill_params
    params.require(:skill).permit(:name, :description, :level, :price_per_hour)
  end

end
