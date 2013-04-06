class CoursesController < ApplicationController
  def find
    @top_salaries = Salary.order("instmed desc").includes(:course).includes(:institution).limit(10)
    @bottom_salaries = Salary.order("instmed asc").includes(:course).includes(:institution).limit(10)
  end

  def results
    courses = Course.withsalary.where('title like ?', "%#{params[:terms]}%").limit(10)

    @top_courses    = courses.order("instmed desc").all.sort{|a,b| b.the_salary.instmed <=> a.the_salary.instmed}
    @bottom_courses = courses.order("instmed asc").all.sort{|a,b| a.the_salary.instmed <=> b.the_salary.instmed}
  end
end
