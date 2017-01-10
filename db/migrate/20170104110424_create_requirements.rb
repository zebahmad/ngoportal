class CreateRequirements < ActiveRecord::Migration[5.0]
  def change
    create_table :requirements do |t|
      t.boolean :matched
      t.string :description
      t.decimal :cost
      t.timestamps
    end
  end
end
