class CreateInfosTable < ActiveRecord::Migration
  def self.up
    create_table :infos do |t|
      t.integer :alert_id

      t.string :language
      t.string :categories
      t.string :event
      t.string :response_types
      t.string :urgency
      t.string :severity
      t.string :certainty
      t.string :audience
      t.string :event_codes
      t.datetime :effective_at
      t.datetime :onset_at
      t.datetime :expires_at
      t.string :sender_name
      t.text   :headline
      t.text   :description
      t.text   :instruction
      t.string :web
      t.string :contact
      t.text   :parameters

      t.timestamps
    end
  end

  def self.down
    drop_table :infos
  end
end
