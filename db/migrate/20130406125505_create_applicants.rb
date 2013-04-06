class CreateApplicants < ActiveRecord::Migration
  def change
    create_table :applicants do |t|
    	t.integer :id
   		t.string :charkey
	    t.string :subject
    	t.integer :applicants
 	    t.integer :accepts

    	t.timestamps
    end
  end
end
