class ChangeRecordIdToId < ActiveRecord::Migration
  def change
    rename_column :salaries, :record_id, :id
  end
end
