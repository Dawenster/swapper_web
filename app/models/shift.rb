class Shift < ActiveRecord::Base
  attr_accessible :location, :locationDetail, :date, :duration, :name, :email, :taken, :notes
end