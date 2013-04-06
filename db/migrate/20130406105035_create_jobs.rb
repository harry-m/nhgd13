class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.integer :id
      t.integer :course_id
      t.string :title
      t.integer :perc
      t.integer :order

      t.timestamps
    end
  end
end
