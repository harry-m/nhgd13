class Institution < ActiveRecord::Base
  attr_accessible :id, :name, :ukprn, :dropout_rate
end
