class AddDropoutRateToInstitution < ActiveRecord::Migration
  def change
    add_column :institutions, :dropout_rate, :float
  end
end
