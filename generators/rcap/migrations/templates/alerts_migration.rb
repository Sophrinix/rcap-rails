class CreateAlerts < ActiveRecord::Migration
  def self.up
    create_table :alerts do |t|
      t.integer :user_id

      t.string :status
      t.string :type
      t.string :source
      t.text :restriction

      t.timestamps
    end
  end

  def self.down
    drop_table :alerts
  end
end
