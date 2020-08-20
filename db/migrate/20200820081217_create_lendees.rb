class CreateLendees < ActiveRecord::Migration[6.0]
  def change
    create_table :lendees do |t|
      t.references :lender, null: false, foreign_key: true
      t.string :amt_owed
      t.string :payment_dates
      t.string :phone_number
      t.string :email
      t.string :payment_due_date

      t.timestamps
    end
  end
end
