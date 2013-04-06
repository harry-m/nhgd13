class RenameParentIdOnCourses < ActiveRecord::Migration
  def change
    rename_column :courses, :parent_id, :institution_id
  end
end
