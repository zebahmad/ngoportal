class ChangeColumn1 < ActiveRecord::Migration[5.0]
  def change
  	rename_column :students, :class, :grade
  end
end
