class AddAttachmentEventImgToEvents < ActiveRecord::Migration
  def self.up
    change_table :events do |t|
      t.attachment :event_img
    end
  end

  def self.down
    remove_attachment :events, :event_img
  end
end
