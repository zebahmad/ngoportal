class ChangeColumn < ActiveRecord::Migration[5.0]
  def change
  	rename_column :students, :name, :full_name
  end
end
