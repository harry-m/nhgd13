class Course < ActiveRecord::Base
  attr_accessible :id, :parent_id, :course_id, :kistype, :title, :course_url, :ucas_code, :fee_variation, :fees_confirmed, :fee_england, :fee_scotland, :fee_ni, :fee_wales

  has_many :children, :class_name => "Course", :foreign_key => :parent_id
  has_many :salaries, :foreign_key => :course_id
end
