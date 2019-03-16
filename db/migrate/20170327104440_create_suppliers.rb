class CreateSuppliers < ActiveRecord::Migration
  def change
    create_table :suppliers do |t|
      t.string :first_name, :limit => 255, :null => false, :unique => false
      t.string :last_name, :limit => 255, :null => false, :unique => false
      t.timestamps 
    end
  end
end
