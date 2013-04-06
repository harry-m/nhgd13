class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :record_id
      t.integer :parent_id
      t.string :course_id
      t.integer :kistype
      t.string :title
      t.string :course_url
      t.string :ucas_code
      t.string :fee_variation
      t.boolean :fees_confirmed
      t.integer :fee_england
      t.integer :fee_scotland
      t.integer :fee_ni
      t.integer :fee_wales
      t.timestamps
    end
  end
end
