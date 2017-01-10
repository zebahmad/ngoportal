class DropTables2 < ActiveRecord::Migration[5.0]
  def change
  	drop_table :students
  	drop_table :sponsors
  	drop_table :requirements
  	drop_table :sponsor_requirement
  	drop_table :admins
  end
end
