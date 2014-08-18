class DeliverablesController < ApplicationController

  def index
    @title = "Deliverables"
    @deliverable = Deliverable.first
  end

  def show
  end

  def new
  end

  def edit
  end
end
