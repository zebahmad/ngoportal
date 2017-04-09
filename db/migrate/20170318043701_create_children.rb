class CreateChildren < ActiveRecord::Migration[5.0]
  def change
    create_table :children do |t|
      t.string :name
      t.binary :photograph
      t.datetime :enrolled_on
      t.timestamps
    end
  end
end
