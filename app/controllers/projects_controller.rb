class ProjectsController < ApplicationController
  before_action :set_project, only: [:destroy, :edit, :show, :update]

  def index
    @title = "Projects"
    @projects = Project.all
  end

  def new
    @title = "New Project"
    @project = Project.new
    @clients = Client.all
  end

  def edit
    @title = "Edit Project"
  end

  def show
    @title = @project.name
  end

  def create
    @project = Project.new(project_params)

    if @project.save
      redirect_to @project, notice: "Project was successfully saved. Thank you!"
    else
      render :new, alert: "Project was not saved"
    end
  end

  def update
    if @project.update(project_params)
      redirect_to @project, notice: "Project was successfully updated. Thank you!"
    else
      render :new, alert: "Project was not updated"
    end
  end

  def destroy
    if @project
      @project.destroy
    end
    redirect_to project_path
  end

  private

  def project_params
    params.require(:project).permit(:description, :name, :client_id)
  end

  def set_project
    @project = Project.find(params[:id])
  end

end
