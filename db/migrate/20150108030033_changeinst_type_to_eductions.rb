class ChangeinstTypeToEductions < ActiveRecord::Migration
  def up
    change_column :educations, :institute_type, :string
  end
end
