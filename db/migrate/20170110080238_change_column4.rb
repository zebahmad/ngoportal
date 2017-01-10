class ChangeColumn4 < ActiveRecord::Migration[5.0]
  def change
  	change_column :requirements, :matched, :boolean, :default => false
  end
end
