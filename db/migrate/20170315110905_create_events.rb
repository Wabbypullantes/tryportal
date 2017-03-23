class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :event_name
      t.string :event_description
      t.date :event_date
      t.string :event_venue

      t.timestamps
    end
  end
end
