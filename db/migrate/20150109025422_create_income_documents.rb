class CreateIncomeDocuments < ActiveRecord::Migration
  def change
    create_table :income_documents do |t|
      t.string :income_doc

      t.timestamps
    end
  end
end
