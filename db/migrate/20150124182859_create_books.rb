class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.integer :category
      t.string :description
      t.integer :langauge
      t.integer :grade
      t.integer :subject
      t.integer :media_type
      t.string :address

      t.timestamps
    end
  end
end
