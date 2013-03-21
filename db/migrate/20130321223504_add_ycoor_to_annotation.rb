class AddYcoorToAnnotation < ActiveRecord::Migration
  def change
    add_column :annotations, :ycoor, :integer
  end
end
