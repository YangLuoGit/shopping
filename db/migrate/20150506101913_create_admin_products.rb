class CreateAdminProducts < ActiveRecord::Migration
  def change
    create_table :admin_products do |t|

      t.timestamps null: false
    end
  end
end
