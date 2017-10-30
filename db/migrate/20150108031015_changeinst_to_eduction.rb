class ChangeinstToEduction < ActiveRecord::Migration
  def change
  	  change_column :educations, :institute_type, :integer
  	  change_column :educations, :institute, :string
  end
end
