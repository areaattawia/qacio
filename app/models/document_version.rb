class DocumentVersion < ActiveRecord::Base
  attr_accessible :document_id, :file, :name

  belongs_to :document

  has_many :annotations

  has_many :collaborators

end
