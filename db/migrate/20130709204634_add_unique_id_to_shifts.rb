class AddUniqueIdToShifts < ActiveRecord::Migration
  def change
  	add_column :shifts, :uniqueID, :string
  end
end
