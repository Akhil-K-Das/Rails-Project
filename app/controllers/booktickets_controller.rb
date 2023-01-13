class BookticketsController < ApplicationController
  def index
    @bookticket = Bookticket.all
    #@ekmtothr = Ekmtothr.all      # Connecting to ekmtothr table through Ekmtothr Model
    #@ekmtotvm = Ekmtotvm.all      # Connecting to ekmtotvm table through Ekmtotvm Model
    #@thrtoekm = Thrtoekm.all      # Connecting to Thrtoekm table through Thrtoekm Model
  end

  def ekmtothr
    @ekmtothr = Ekmtothr.all      # Connecting to ekmtothr table through Ekmtothr Model
  end

  def ekmtotvm
    @ekmtotvm = Ekmtotvm.all      # Connecting to ekmtotvm table through Ekmtotvm Model
  end

  def thrtoekm
    @thrtoekm = Thrtoekm.all       # Connecting to Thrtoekm table through Thrtoekm Model
  end

  def new

    # Methode for Searching based on bustype

    @bookticket1 = Bookticket.all
    if params[:search]!= ""
      @bookticket1 = @bookticket1.where(bustype: params[:search])
    end
  end

  def search_ekmtothr
    @ekmtothr = Ekmtothr.all
    if params[:search]!= ""
      @ekmtothr = @ekmtothr.where(bustype: params[:search])
    end
  end

  def search_ekmtotvm
    @ekmtotvm = Ekmtotvm.all
    if params[:search]!= ""
      @ekmtotvm = @ekmtotvm.where(bustype: params[:search])
    end
  end

  def search_thrtoekm
    @thrtoekm = Thrtoekm.all
    if params[:search]!= ""
      @thrtoekm = @thrtoekm.where(bustype: params[:search])
    end
  end

  def search_date_ekmtotvm
    @results = Ekmtotvm.all
    if params[:start_date]!=""
      # date_change = Ekmtotvm.all
      # date_change.date = params[:start_date]
      # date_change.save
      # user = User.find(1)
      # user.email = "new_email@example.com"
      # user.save
      Ekmtotvm.update_all(date: params[:start_date])

      @results = Ekmtotvm.where(date: params[:start_date])
    end
  end

  # def create
  #   @bookticket = Bookticket.new(bookticket_params)
  #   #@bookticket = Bookticket.create(:bustype => "AC", :bus => "KSRTC (Kerala) - 1500SBYTVM", :departure => "08:30", :duration => "02:00", :arrival => "10:30", :fare => 130, :seats_available =>18, :from =>"Thrissur", :to => "Ernakulam")
  #   if (@bookticket.save)
  #     redirect_to @bookticket
  #   else
  #     render 'new'  
  #   end

  # end

  # def show
  #   @bookticket = Bookticket.find(params[:id])
  # end

  # private def bookticket_params
  #   params.require(:bookticket).permit(:bustype, :bus, :departure, :duration, :arrival, :fare, :seats_available, :from, :to, :search, :start_date)
  # end
end
