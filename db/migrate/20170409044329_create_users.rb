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
  end
end
