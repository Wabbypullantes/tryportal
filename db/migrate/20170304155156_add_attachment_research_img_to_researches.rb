class AddAttachmentResearchImgToResearches < ActiveRecord::Migration
  def self.up
    change_table :researches do |t|
      t.attachment :research_img
    end
  end

  def self.down
    remove_attachment :researches, :research_img
  end
end
