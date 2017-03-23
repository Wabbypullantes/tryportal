class Event < ApplicationRecord

    has_attached_file :event_img, :styles => { :event_index => "250x350>", :event_show => "325x475" }, :default_url => "/images/:style/missing.png"
    validates_attachment_content_type :event_img, content_type: /\Aimage\/.*\z/

    belongs_to :user

end
