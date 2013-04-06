class CreateEmployments < ActiveRecord::Migration
  def change
    create_table :employments do |t|
      t.integer :id
      t.integer :course_id
      t.integer :pop
      t.integer :agg
      t.integer :sbj
      t.integer :workstudy
      t.integer :assunemp
      t.integer :both
      t.integer :noavail
      t.integer :study
      t.integer :work

      t.timestamps
    end
  end
end