class CreateChildSponsorships < ActiveRecord::Migration[5.0]
  def change
    create_table :child_sponsorships do |t|
      t.belongs_to :child, foreign_key: true
      t.belongs_to :sponsor, foreign_key: true
      t.string :sponsorship_type
      t.datetime :start_from
      t.datetime :valid_till
      t.string :periodicity
      t.string :event
      t.text :comments

      t.timestamps
    end
  end
end
