class Document < ActiveRecord::Base
  attr_accessible :access_link, :name, :project_id

  belongs_to :project

  has_many :documentversions
  has_many :collaborators

  mount_uploader :image, ImageUploader
end
