class AddUploadToFinances < ActiveRecord::Migration
  def change
    add_column :finances, :uploaded_document, :longblob
  end
end
