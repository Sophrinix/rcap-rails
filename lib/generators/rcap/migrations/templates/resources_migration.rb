class CreateResourcesTable < ActiveRecord::Migration
  def self.up
    create_table :resources do |t|
      t.integer :alert_id
      t.string :description

      t.timestamps
    end
  end

  def self.down
    drop_table :resources
  end
end
