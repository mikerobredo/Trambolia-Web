class CreatePhonesAndPhonesSuppliers < ActiveRecord::Migration
  
  def up
    create_table :phones do |t|
      t.string :title, :limit => 255, :null => false
      t.integer :manufacturer_id, :null => false
      t.datetime :manufactured_at
      t.string :imei, :limit => 15, :unique => true
      t.text :blurb
      t.float :price
      t.timestamps
    end

    create_table :phones_suppliers do |t|
      t.integer :supplier_id, :null => false
      t.integer :phone_id, :null => false
      t.timestamps
    end

    say_with_time 'Adding foreing keys' do
      # Add foreign key reference to phones_suppliers table
      execute 'ALTER TABLE phones_suppliers ADD CONSTRAINT fk_phones_suppliers_suppliers
              FOREIGN KEY (supplier_id) REFERENCES suppliers(id) ON DELETE CASCADE'      
      execute 'ALTER TABLE phones_suppliers ADD CONSTRAINT fk_phones_suppliers_phones
              FOREIGN KEY (phone_id) REFERENCES phones(id) ON DELETE CASCADE'
      # Add foreign key reference to manufacturers table
      execute 'ALTER TABLE phones ADD CONSTRAINT fk_phones_manufacturers
              FOREIGN KEY (manufacturer_id) REFERENCES manufacturers(id) ON DELETE CASCADE'
    end
  end

  def self.down
    drop_table :phones
    drop_table :phones_suppliers
  end
end
