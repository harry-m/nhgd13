class Accreditations < ActiveRecord::Base
	belongs_to :course

	attr_accessible :id, :course_id, :text, :accbodyid, :accurl, :accdepend, :accdependurl, :accdependurlw
end
