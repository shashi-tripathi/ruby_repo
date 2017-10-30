class CreateEducations < ActiveRecord::Migration
  def change
    create_table :educations do |t|
      t.integer :grade
      t.integer :institute
      t.integer :institute_type
      t.integer :institute_country
      t.integer :institute_state
      t.string :institue_city
      t.string :institute_website
      t.string :institute_email
      t.string :institute_phone
      t.string :teacher_name
      t.string :teach_email
      t.string :teacher_phone
      t.integer :user_id

      t.timestamps
    end
  end
end
