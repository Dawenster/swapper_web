class ShiftsController < ApplicationController
  def index
    render :json => { :shifts => Shift.all }
  end

  def create
  	puts "*" * 100
		puts params["name"]
    puts params["location"]
    puts params["locationDetail"]
    puts params["date"]
    puts params["duration"]
    puts params["email"]
    puts params["taken"]
    puts params["notes"]

    # shift = Shift.create(:name => params["name"],
				#     						 :location => params["location"],
				#     						 :locationDetail => params["locationDetail"],
				#     						 :date => params["date"],
				#     						 :duration => params["duration"],
				#     						 :email => params["email"],
				#     						 :taken => params["taken"],
				#     						 :notes => params["notes"])

    render :json => { :id => 1 }
  end

  def update
    
  end

  def destroy
    
  end
end