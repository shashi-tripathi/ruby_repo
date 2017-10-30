class CreateFinances < ActiveRecord::Migration
  def change
    create_table :finances do |t|
      t.integer :father_profs
      t.integer :mother_profess
      t.integer :father_income
      t.integer :mother_income
      t.integer :other_income
      t.integer :economic_status
      t.integer :income_document
      t.integer :rationa_card
      t.integer :bank_statement
      t.integer :bank_name
      t.string :bank_account_no
      t.integer :user_id

      t.timestamps
    end
  end
end
