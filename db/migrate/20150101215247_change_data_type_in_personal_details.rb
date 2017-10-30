class ChangeDataTypeInPersonalDetails < ActiveRecord::Migration
  def up
    change_column :personal_details, :gender, :string
  end

  def down
    change_column :personal_details, :gender, :boolean
  end
end
