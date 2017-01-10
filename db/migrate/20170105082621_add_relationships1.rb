class AddRelationships1 < ActiveRecord::Migration[5.0]
  def change
  	create_table :students do |t|
      t.string :name
      t.timestamps
    end
 
    create_table :sponsors do |t|
      t.string :name
      t.timestamps
    end

    create_table :requirements do |t|
      t.string :type
      t.belongs_to :student, index: true
      t.timestamps
    end
 
    create_table(:sponsor_requirement, id: false) do |t|
      t.belongs_to :requirement, index: true
      t.belongs_to :sponsor, index: true
    end
  end
end
