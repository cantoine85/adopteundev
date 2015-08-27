class ProjectController < ApplicationController
  before_action :find_project, only: [:show]


  def new
    @project = Project.new
  end

  def create
    @project = Project.new(params[:project])
    @project.save
  end


  def show
  end





  private

  def find_project
    @project = Project.find(params[:id])
  end
end
