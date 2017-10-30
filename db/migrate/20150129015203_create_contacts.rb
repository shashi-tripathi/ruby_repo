class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :sent_to
      t.string :sent_from
      t.string :message

      t.timestamps
    end
  end
end
