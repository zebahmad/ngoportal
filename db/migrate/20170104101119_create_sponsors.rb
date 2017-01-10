class CreateSponsors < ActiveRecord::Migration[5.0]
  def change
    create_table :sponsors do |t|
      t.string :name
      t.string :address
      t.string :occupation
      t.timestamps
    end
  end
end
