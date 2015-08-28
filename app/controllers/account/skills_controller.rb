module Account
  class SkillsController < ApplicationController
    # before_action :set_user , only: [:create]

    def index
      @skills = current_user.skills
    end

    def new
      @skill = Skill.new
    end

    def create
      @skill = Skill.new(skill_params)
      @skill.user = current_user
      if @skill.save
        redirect_to account_skills_path
      else
        render :new
      end
    end

    def edit
    end

    def show
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

end
