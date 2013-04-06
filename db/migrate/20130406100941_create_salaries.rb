class CreateSalaries < ActiveRecord::Migration
  def change
    create_table :salaries do |t|
      t.integer :record_id
      t.integer :parent_id
      t.integer :pop
      t.integer :agg
      t.string :sbj
      t.integer :ldlq
      t.integer :ldmed
      t.integer :lduq
      t.integer :lq
      t.integer :med
      t.integer :uq
      t.integer :instlq
      t.integer :instmed
      t.integer :instuq

      t.timestamps
    end
  end
end
