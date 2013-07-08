class Shift < ActiveRecord::Base
  attr_accessible :location, :locationDetail, :date, :duration, :email, :taken, :notes
end