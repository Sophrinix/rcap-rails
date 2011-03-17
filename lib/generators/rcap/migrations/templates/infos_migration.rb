class CreateInfosTable < ActiveRecord::Migration
  def self.up
    create_table :infos do |t|
      t.integer :alert_id

      t.string :language
      t.string :category
      t.string :event_type
      t.string :response_type
      t.string :urgency
      t.string :severity
      t.string :certainty
      t.datetime :effective_at
      t.datetime :onset_at
      t.datetime :expires_at
      t.string :sender_name
      t.text :description
      t.text :instructions

      t.timestamps
    end
  end

  def self.down
    drop_table :infos
  end
end
