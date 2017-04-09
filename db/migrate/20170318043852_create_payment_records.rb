class CreatePaymentRecords < ActiveRecord::Migration[5.0]
  def change
    create_table :payment_records do |t|
      t.string :status
      t.datetime :received_on
      t.binary :receipt
      t.string :comments
      t.string :created_by
      t.string :last_updated_by
      t.belongs_to :child_sponsorship, foreign_key: true

      t.timestamps
    end
  end
end
