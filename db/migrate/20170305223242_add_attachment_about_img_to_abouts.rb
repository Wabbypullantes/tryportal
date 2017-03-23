class AddAttachmentAboutImgToAbouts < ActiveRecord::Migration
  def self.up
    change_table :abouts do |t|
      t.attachment :about_img
    end
  end

  def self.down
    remove_attachment :abouts, :about_img
  end
end
