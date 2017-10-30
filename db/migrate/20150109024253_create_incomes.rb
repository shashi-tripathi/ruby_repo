class CreateIncomes < ActiveRecord::Migration
  def change
    create_table :incomes do |t|
      t.string :income_detail 

      t.timestamps
    end
  end
end
