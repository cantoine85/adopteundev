class SkillsController < ApplicationController
  # before_action :set_user , only: [:create]

  def index
    @skills = Skill.all
  end

  def new
      @skill = Skill.new
  end

  def edit
  end

  def create
    @skill = Skill.new(skill_params)
    # @skill.user = current_user
    if @skill.save
      redirect_to skill_path(@skill)
    else
      render :new
    end
  end

  def show
    @skill = Skill.find(params[:id])
  end

  def update
  end


  private

  # def set_user
  #   @user =User.find(params[:user_id])
  # end

  def skill_params
    params.require(:skill).permit(:name, :description, :level, :price_per_hour)
  end

end
