class IssuesController < ApplicationController

  def index
    @title = "Issues"
    @issue = Issue.first
  end

  def show
  end

  def new
  end

  def edit
  end
end
