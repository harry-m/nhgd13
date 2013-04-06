class CreateAccreditations < ActiveRecord::Migration
  def change
    create_table :accreditations do |t|
      t.integer :id
      t.integer :course_id
      t.string :text
      t.integer :accbodyid
      t.string :accurl
      t.boolean :accdepend
      t.string :accdependurl
      t.string :accdependurlw

      t.timestamps
    end
  end
end