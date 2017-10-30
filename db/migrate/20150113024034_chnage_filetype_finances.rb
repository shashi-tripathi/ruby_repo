class ChnageFiletypeFinances < ActiveRecord::Migration
  def up
    change_column :finances, :uploaded_document, :binary
  end
end
