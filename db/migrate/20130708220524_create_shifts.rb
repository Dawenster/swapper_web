class CreateShifts < ActiveRecord::Migration
  def change
    create_table :shifts do |t|
      t.string :name
      t.string :location
      t.string :locationDetail
      t.datetime :date
      t.integer :duration
      t.string :email
      t.boolean :taken
      t.text :notes

      t.timestamps
    end
  end
end