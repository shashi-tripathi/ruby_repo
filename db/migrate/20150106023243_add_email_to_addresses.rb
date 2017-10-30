class AddEmailToAddresses < ActiveRecord::Migration
  def change
    add_column :addresses, :email, :string
    add_column :addresses, :phone, :string
    add_column :addresses, :alt_phone, :string
    add_column :addresses, :mobile, :string
  end
end
