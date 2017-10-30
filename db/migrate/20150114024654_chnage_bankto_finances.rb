class ChnageBanktoFinances < ActiveRecord::Migration
  def up
    change_column :finances, :uploaded_document, :longblob
  end
end
