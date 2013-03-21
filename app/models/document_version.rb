class DocumentVersion < ActiveRecord::Base
  attr_accessible :document_id, :file, :name, :image

  belongs_to :document

  has_many :annotations

  has_many :collaborators

  mount_uploader :image
end
