class ShiftsController < ApplicationController
  def index
    render :json => { :shifts => Shift.all }
  end

  def create
  	date = DateTime.strptime(params["date"].gsub("  0000",""), "%Y-%m-%d %H:%M:%S")
  	taken = params["taken"] == "true" ? true : false

    shift = Shift.create(:name => params["name"],
				    						 :location => params["location"],
				    						 :locationDetail => params["locationDetail"],
				    						 :date => date,
				    						 :duration => params["duration"],
				    						 :email => params["email"],
				    						 :taken => taken,
				    						 :notes => params["notes"],
				    						 :uniqueID => params["uniqueID"])
  end

  def update
    
  end

  def destroy
    
  end
end