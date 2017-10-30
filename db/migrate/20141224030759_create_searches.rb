class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|
      t.integer :country
      t.integer :state
      t.integer :zip
      t.string :city
      t.integer :user_type
      t.integer :distance

      t.timestamps
    end
  end
end
