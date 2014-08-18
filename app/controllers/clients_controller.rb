class ClientsController < ApplicationController

  def index
    @title = "Clients"
    @clients = Client.all
  end

  def new
    @title = "New Client"
    @client = Client.new
  end

  def edit
    @title = "Edit Client"
    @client = Client.find(params[:id])
  end

  def create
    @client = Client.new(client_params)

    if @client.save
      redirect_to @client, notice: "Client was successfully saved. Thank you!"
    else
      render :new, alert: "Client was not saved"
    end
  end

  def update
    @client = Client.find(params[:id])
    if @client.update(client_params)
      redirect_to @client, notice: "Client was successfully updated. Thank you!"
    else
      render :new, alert: "Client was not updated"
    end
  end

  def destroy
    @client = Client.find_by_id(params[:id])
    if @client
      @client.destroy
    end
    redirect_to clients_path
  end

  def show
    @client = Client.find(params[:id])
    @title = @client.name
  end

  private

  def client_params
    params.require(:client).permit(:name, :company_name, :email)
  end

end
