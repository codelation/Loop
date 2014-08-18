class ClientsController < ApplicationController

  def index
    @title = "Clients"
    @client = Client.first
  end

  def show
  end

  def new
  end

  def edit
  end

end
