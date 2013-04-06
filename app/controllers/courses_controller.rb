class CoursesController < ApplicationController
  def find
  end

  def results
    courses = Course.withsalary.where('title like ?', "%#{params[:terms]}%").limit(10)
    @top_courses    = courses.order("instmed desc")
    @bottom_courses = courses.order("instmed asc")
  end
end
