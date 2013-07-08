class ShiftsController < ApplicationController
  def index
    render :json => { :shifts => Shift.all }
  end

  def create
    
  end

  def update
    
  end

  def destroy
    
  end
end