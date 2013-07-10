class ShiftsController < ApplicationController
  def index
    render :json => { :shifts => Shift.order("date ASC") }
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

    render :json => { :shiftID => shift.id }
  end

  def update
    date = DateTime.strptime(params["date"].gsub("___"," ").gsub(" +0000",""), "%Y-%m-%d %H:%M:%S")
  	taken = params["taken"] == "true" ? true : false

    shift = Shift.find_by_uniqueID(params["uniqueID"])
    shift.update_attributes(:name => params["name"].gsub("___"," "),
					    						  :location => params["location"].gsub("___"," "),
					    						  :locationDetail => params["locationDetail"].gsub("___"," "),
					    						  :date => date,
					    						  :duration => params["duration"].gsub("___"," "),
					    						  :email => params["email"].gsub("___"," "),
					    						  :taken => taken,
					    						  :notes => params["notes"].gsub("___"," "))

    render :text => "Updated"
  end

  def destroy
    Shift.find_by_uniqueID(params["uniqueID"]).destroy
    render :text => "Deleted"
  end
end