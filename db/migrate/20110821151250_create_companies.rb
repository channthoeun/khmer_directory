class CreateCompanies < ActiveRecord::Migration
  def self.up
    create_table :companies do |t|
      t.string :name
      t.string :address
      t.string :website
      t.string :pobox
      t.string :logo
      t.string :map
      t.integer :location_id

      t.timestamps
    end
  end

  def self.down
    drop_table :companies
  end
end
