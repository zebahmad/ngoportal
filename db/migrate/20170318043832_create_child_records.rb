class CreateChildRecords < ActiveRecord::Migration[5.0]
  def change
    #drop_table 'child_records' if ActiveRecord::Base.connection.table_exists? 'child_records'
    create_table :child_records do |t|
      t.string :record_type
      t.string :contents
      t.string :created_by
      t.string :last_updated_by
      t.belongs_to :child, foreign_key: true

      t.timestamps
    end
  end
end
