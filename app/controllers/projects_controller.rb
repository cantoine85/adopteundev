class ProjectController < ApplicationController
  before_action :find_project, only: [:show]

  def show
  end




  private

  def find_project
    @project = Project.find(params[:id])
  end
end