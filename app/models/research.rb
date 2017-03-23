class Research < ApplicationRecord

  has_attached_file :research_img, :styles => { :research_index => "250x350>", :research_show => "325x475>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :research_img, content_type: /\Aimage\/.*\z/


  belongs_to :user
  
end
