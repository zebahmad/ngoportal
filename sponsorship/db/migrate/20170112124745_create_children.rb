class CreateChildren < ActiveRecord::Migration[5.0]
  def change
    create_table :children do |t|
      t.string :name
      t.binary :photograph
      t.datetime :enrolled_on
      t.datetime :created_on
      t.datetime :last_updated_on

      t.timestamps
    end
  end
end
