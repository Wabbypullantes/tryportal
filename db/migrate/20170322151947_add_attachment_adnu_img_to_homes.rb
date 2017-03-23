class AddAttachmentAdnuImgToHomes < ActiveRecord::Migration
  def self.up
    change_table :homes do |t|
      t.attachment :adnu_img
    end
  end

  def self.down
    remove_attachment :homes, :adnu_img
  end
end
