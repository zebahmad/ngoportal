class CreateSponsors < ActiveRecord::Migration[5.0]
  def change
    create_table :sponsors do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :referred_by
      t.string :preferred_communication
      t.string :comments
      t.datetime :created_on
      t.datetime :last_updated_on

      t.timestamps
    end
  end
end
