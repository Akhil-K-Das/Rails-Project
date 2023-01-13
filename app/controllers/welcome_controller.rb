class WelcomeController < ApplicationController
  def index
    @welcome = Welcome.all
    @busroute = Busroute.all # Connecting to Busroutes table through Busroute Model
  end

  def search_bus_route
       @search = Busroute.all
    if params[:search]!= ""
      @search = @search.where(route: params[:search])
    end
  end
  # def new

  # end

  # def create
  #   @welcome = Welcome.new(welcome_params)
  #   #@bookticket = Bookticket.create(:bustype => "AC", :bus => "KSRTC (Kerala) - 1500SBYTVM", :departure => "08:30", :duration => "02:00", :arrival => "10:30", :fare => 130, :seats_available =>18, :from =>"Thrissur", :to => "Ernakulam")
  #   if (@welcome.save)
  #     redirect_to @welcome
  #   else
  #     render 'new'  
  #   end

  # end

  # def show
  #   @welcome = Welcome.find(params[:id])
  # end

  # private def welcome_params
  #   params.require(:welcome).permit(:route, :first_bus, :last_bus)
  # end

end
