class ChangeDataTypeSiblingInPersonalDetails < ActiveRecord::Migration
 def up
    change_column :personal_details, :sibling, :string
  end

  def down
    change_column :personal_details, :sibling, :boolean
  end
end
