class Home < ApplicationRecord
  has_attached_file :adnu_img, :styles => { :adnu_index => "30x30>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :adnu_img, content_type: /\Aimage\/.*\z/
  
end
