class AddRelationships < ActiveRecord::Migration[5.0]
  def change
  	drop_table :students
  	drop_table :sponsors
  	drop_table :requirements
  end
end
