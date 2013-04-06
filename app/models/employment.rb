class Employment < ActiveRecord::Base
	belongs_to :course

	attr_accessible :id, :course_id, :pop, :agg, :sbj, :workstudy, :assunemp, :both, :noavail, :study, :work
end
