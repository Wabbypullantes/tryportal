class Subject < ApplicationRecord

  validates :subject_title, presence:true
  belongs_to :user


end
