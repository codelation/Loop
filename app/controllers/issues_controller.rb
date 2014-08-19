class IssuesController < ApplicationController

  def index
    @title = "Issues"
    @deliverables = Deliverable.all
  end

  def new
    @title = "New Issue"
    @issue = Issue.new
  end

  def edit
    @title = "Edit Issue"
    @issue = Issue.find(params[:id])
  end

  def create
    @issue = Issue.new(issue_params)

    if @issue.save
      redirect_to @issue, notice: "Issue was successfully saved. Thank you!"
    else
      render :new, alert: "Issue was not saved"
    end
  end

  def update
    @issue = Issue.find(params[:id])
    if @issue.update(issue_params)
      redirect_to @issue, notice: "Issue was successfully updated. Thank you!"
    else
      render :edit, alert: "Issue was not updated"
    end
  end

  def destroy
    @issue = Issue.find_by_id(params[:id])
    if @issue
      @issue.destroy
    end
    redirect_to issues_path
  end

  def show
    @issue = Issue.find(params[:id])
    @title = @issue.title
  end

  private

  def issue_params
    params.require(:issue).permit(:body, :budgeted_time,
                                  :deliverable_id, :priority,
                                  :title)
  end

end
