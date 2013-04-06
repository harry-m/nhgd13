class Job < ActiveRecord::Base
	belongs_to :course

  attr_accessible :course_id, :id, :title, :perc, :order
end
