module Account
  class ProjectsController < ApplicationController
    before_action :find_project, only: [:show, :edit]

    def index
      @projects = current_user.projects
    end

    def new
      @project = Project.new
    end

    def show
    end


    def edit
    end

    def update
      @project = Project.find(project_params)
      @project.update(params[:project])
      redirect_to account_projects_path(@project)
    end

    private

    def find_project
      @project = Project.find(params[:id])
    end

    def project_params
      params.require(:project).permit(:name, :status, :price, :number_of_hours, :check_out)
    end
  end

end
