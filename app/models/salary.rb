class Salary < ActiveRecord::Base
  belongs_to :course

  attr_accessible :agg, :instlq, :instmed, :instuq, :ldlq, :ldmed, :lduq, :lq, :med, :pop, :sbj, :uq, :id, :course_id
end
