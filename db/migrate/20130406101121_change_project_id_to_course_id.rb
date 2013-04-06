class ChangeProjectIdToCourseId < ActiveRecord::Migration
  def change
    rename_column :salaries, :parent_id, :course_id
  end
end
