class DeliverablesController < ApplicationController

  def index
    @title = "Deliverables"
    @projects = Project.all
  end

  def new
    @title = "New Deliverable"
    @deliverable = Deliverable.new
  end

  def edit
    @title = "Edit Deliverable"
    @deliverable = Deliverable.find(params[:id])
  end

  def create
    @deliverable = Deliverable.new(deliverable_params)

    if @deliverable.save
      redirect_to @deliverable, notice: "Deliverable was successfully saved. Thank you!"
    else
      render :new, alert: "Deliverable was not saved"
    end
  end

  def update
    @deliverable = Deliverable.find(params[:id])
    if @deliverable.update(deliverable_params)
      redirect_to @deliverable, notice: "Deliverable was successfully updated. Thank you!"
    else
      render :new, alert: "Deliverable was not updated"
    end
  end

  def destroy
    @deliverable = Deliverable.find_by_id(params[:id])
    if @deliverable
      @deliverable.destroy
    end
    redirect_to deliverables_path
  end

  def show
    @deliverable = Deliverable.find(params[:id])
    @title = @deliverable.name
  end

  private

  def deliverable_params
    params.require(:deliverable).permit(:description, :name, :project_id)
  end

end
