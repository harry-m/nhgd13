class Course < ActiveRecord::Base
  attr_accessible :record_id, :parent_id, :course_id, :kistype, :title, :course_url, :ucas_code, :fee_variation, :fees_confirmed, :fee_england, :fee_scotland, :fee_ni, :fee_wales
end
