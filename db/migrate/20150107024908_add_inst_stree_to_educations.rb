class AddInstStreeToEducations < ActiveRecord::Migration
  def change
    add_column :educations, :institute_stree, :string
    add_column :educations, :institue_zip, :string
  end
end
