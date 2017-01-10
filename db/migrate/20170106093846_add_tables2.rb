class AddTables2 < ActiveRecord::Migration[5.0]
  def change
  	drop_table :sponsors
  	drop_table :requirements
  	drop_table :sponsor_requirement

  	create_table :students do |t|
      t.string :name
      t.string :grade
      t.string :dob
      t.string :place_of_birth      	
      t.timestamps
    end
 
    create_table :sponsors do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.string :proof_type
      t.string :proof_number
      t.integer :total_amount
      t.timestamps
    end

    create_table :requirements do |t|
      t.string :type
      t.integer :cost
      t.boolean :matched
      t.string :description
      t.belongs_to :student, index: true
      t.timestamps
    end
 
    create_table(:sponsor_requirement, id: false) do |t|
      t.belongs_to :requirement, index: true
      t.belongs_to :sponsor, index: true
    end

    create_table :admins do |t|
    	t.string :email
    	t.string :password_digest
    end
  end
end
