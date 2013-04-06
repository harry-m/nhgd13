class DropRecordIdFromCourses < ActiveRecord::Migration
  def change
    remove_column :courses, :record_id
  end
end
