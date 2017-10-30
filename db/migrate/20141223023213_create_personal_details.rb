class CreatePersonalDetails < ActiveRecord::Migration
  def change
    create_table :personal_details do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.date :dob
      t.boolean :gender
      t.boolean :sibling
      t.string :s_first_name
      t.string :s_middle_name
      t.string :s_last_name
      t.date :s_dob
      t.string :f_first_name
      t.string :f_middle_name
      t.string :f_last_name
      t.date :f_dob
      t.string :m_first_name
      t.string :m_middle_name
      t.string :m_last_name
      t.string :m_dob
      t.string :ref1_name
      t.string :ref1_relation
      t.string :ref2_name
      t.string :ref2_relation

      t.timestamps
    end
  end
end
