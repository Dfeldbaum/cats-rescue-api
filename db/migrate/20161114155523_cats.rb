class Cats < ActiveRecord::Migration[5.0]
  def change
  		create_table :cats_table do |table|
  		table.string :name
  		table.string :note
  		table.string :img	
  		end 
  end
end
