class CreateInstitutions < ActiveRecord::Migration
  def change
    create_table :institutions do |t|
      t.integer :ukprn
      t.string :name

      t.timestamps
    end
  end
end
