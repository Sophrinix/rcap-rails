class CreateAreasTable < ActiveRecord::Migration
  def self.up
    create_table :areas do |t|
      t.integer :alert_id
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :areas
  end
end
