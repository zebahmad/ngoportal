class CreatePaymentRecords < ActiveRecord::Migration[5.0]
  def change
    create_table :payment_records do |t|
      t.string :donor_name
      t.string :status
      t.datetime :received_on
      t.binary :receipt
      t.string :comments
      t.string :created_by
      t.string :last_updated_by
      t.datetime :created_on
      t.datetime :last_updated_on
      t.belongs_to :child_sponsorship, foreign_key: true

      t.timestamps
    end
  end
end
