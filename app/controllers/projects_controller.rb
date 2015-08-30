class ProjectsController < ApplicationController
  before_action :find_project, only: [:show, :edit]

  def new
    @project = Project.new
    @skill = Skill.find(params[:skill_id]) # form for dit qu'il faut egalement trouver et donner id de skill
  end

  def create
    @project.user = current_user # je veux le user du project, Pour l'imprication commencer par le haut
    @project.skill = Skill.find(params[:skill_id]) # je veux la kill du project, imprication liee au nestage
    @project = Project.new(project_params) #veut le contenus du formulaire
    if @project.save  #je sauvegarde
      redirect_to account_projects_path(@project)  # Je redirige
    else
      render :new
    end
  end

  def show
  end


  def edit
  end

  def update
    @project.update(params[:project])
    @project = Project.find(project_params)
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


