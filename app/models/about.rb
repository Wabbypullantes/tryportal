class About < ApplicationRecord
  has_attached_file :about_img, :styles => { :about_index => "500x250>"}, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :about_img, content_type: /\Aimage\/.*\z/

  belongs_to :user
end
