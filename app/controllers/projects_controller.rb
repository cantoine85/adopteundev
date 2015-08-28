class ProjectsController < ApplicationController
  before_action :find_user, only: [ :new, :create, :destroy]

  def index
    @projects = Project.all
  end

  def new
    @project = Project.new
  end

  def create
    @project = @user.project.build(project_params)
    @project.save
    redirect_to user_project_path(@project)
  end

  def show
  end



  private

  def find_user
    @user = User.find(params[:user_id])
  end

  def project_params
    params.require(:project).permit(:name, :status, :price, :number_of_hours, :check_out)
  end
end


