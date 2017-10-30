class CreateEconstatuses < ActiveRecord::Migration
  def change
    create_table :econstatuses do |t|
      t.string :econ_status

      t.timestamps
    end
  end
end
