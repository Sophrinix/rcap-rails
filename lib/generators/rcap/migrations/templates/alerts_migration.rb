class CreateAlertsTable < ActiveRecord::Migration
  def self.up
    create_table :alerts do |t|
      t.integer :user_id

      t.string :identifier
      t.string :sender
      t.datetime :sent
      t.string :status
      t.string :msg_type
      t.string :source
      t.string :scope
      t.text   :restriction
      t.text   :addresses
      t.string :code
      t.text   :note
      t.text   :references
      t.text   :incidents

      t.timestamps
    end
  end

  def self.down
    drop_table :alerts
  end
end
