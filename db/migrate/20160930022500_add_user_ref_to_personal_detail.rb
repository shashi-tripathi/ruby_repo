class AddUserRefToPersonalDetail < ActiveRecord::Migration
  def change
    add_reference :personal_details, :user, index: true
  end
end
