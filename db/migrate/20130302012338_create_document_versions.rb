class CreateDocumentVersions < ActiveRecord::Migration
  def change
    create_table :document_versions do |t|
      t.integer :document_id

      t.timestamps
    end
  end
end
