class ClientsController < ApplicationController
    
    before_action :set_client, only: [:edit, :update, :show, :destroy]
    
   def index
    @clients=Client.all
   end 
   
   def new
    @client = Client.new
   end
   
   def edit
        
   end

    def create
        @client = Client.new(client_params)
        @client.user = User.first
        if @client.save
            flash[:success]="Client was successfully registered"
            redirect_to client_path(@client)
        else
            render 'new'
        end
    end
    
    def update
        if @client.update(client_params)
            flash[:success]="Client was successfully updated"
            redirect_to client_path(@client)
        else
            render 'edit'
        end
    end
    
    def show 
        
    end
   
    def destroy
       @client.destroy
       flash[:success]="Client was successfully deleted"
       redirect_to clients_path
    end   
    
    
    private
    def set_client
        @client = Client.find(params[:id])
    end
    
    def client_params
        params.require(:client).permit(:name, :address, :phone_number, :appointed_retained,:alleged_offenses)
    end
end