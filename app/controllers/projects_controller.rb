class ProjectsController < ApplicationController
  before_action :find_project, only: [:show, :edit]

  def new
    @project = Project.new
    @skill = Skill.find(params[:skill_id])
  end

  def create
    raise
    @project = Project.new(project_params)
    @project.user = current_user
    @project.skill = Skill.find(params[:skill_id])
    if @project.save
      redirect_to account_projects_path(@project)
    else
      render :new
    end
  end

  def show
  end


  def edit
  end

  def update
    @project = Project.find(project_params)
    @project.update(params[:project])
    redirect_to account_projects_path
  end

  private

  def find_project
    @project = Project.find(params[:id])
  end

  def project_params
    params.require(:project).permit(:name, :status, :price, :number_of_hours, :check_out)
  end
end


