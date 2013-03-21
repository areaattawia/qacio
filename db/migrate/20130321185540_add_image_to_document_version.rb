class AddImageToDocumentVersion < ActiveRecord::Migration
  def change
    add_column :document_versions, :image, :string
  end
end
