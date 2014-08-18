class ProjectsController < ApplicationController

  def index
    @title = "Projects"
    @project = Project.first
  end

  def show
  end

  def new
  end

  def edit
  end
end
