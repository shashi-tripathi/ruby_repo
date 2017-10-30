class AddcolumnToFinances < ActiveRecord::Migration
  def change
    add_column :finances, :filename, :string
    add_column :finances, :content_type, :string
  end
end
