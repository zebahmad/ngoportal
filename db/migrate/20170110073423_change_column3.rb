class ChangeColumn3 < ActiveRecord::Migration[5.0]
  def change
  	  	rename_column :requirements, :type, :rtype
  end
end
