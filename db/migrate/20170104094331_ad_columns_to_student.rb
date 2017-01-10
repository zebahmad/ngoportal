class AdColumnsToStudent < ActiveRecord::Migration[5.0]
  def change
  	add_column :students, :name, :string
  	add_column :students, :grade, :string
  	add_column :students, :age, :integer
  end
end
