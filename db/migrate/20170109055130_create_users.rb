class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
    	t.string :name
    	t.string :email
    	t.string :password_digest
    	t.boolean :admin, default: false
    	t.string :activation_digest
    	t.boolean :activated 
    	t.datetime :activated_at
      t.timestamps
    end

    create_table :students do |t|
    	t.string :name
    	t.string :class
    	t.string :dob
    	t.string :place_of_birth
      t.timestamps
    end

    create_table :requirements do |t|
    	t.string :type
    	t.decimal :cost
    	t.boolean :matched
    	t.string :description
    	t.belongs_to :student, index: true
    	t.belongs_to :user, index: true

      t.timestamps
    end

    create_table :sponsorship_ds do |t|
    	t.decimal :amount
    	t.belongs_to :requirement, index: true
    	t.belongs_to :user, index: true

      t.timestamps
    end


  end
end
