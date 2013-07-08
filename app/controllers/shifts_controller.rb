class ShiftsController < ApplicationController
  def index
    render json: { "name": Shift.first.name }
  end

  def create
    
  end

  def update
    
  end

  def destroy
    
  end
end