class Annotation < ActiveRecord::Base

  attr_accessible :content, :document_version_id, :user_id, :number, :xcoor, :ycoor

  belongs_to :document_version

  validates_presence_of :content
  
end

