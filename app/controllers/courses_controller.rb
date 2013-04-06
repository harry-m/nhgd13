class CoursesController < ApplicationController
  def find
  end

  def results
    results = Course.withsalary.where('title like ?', "%#{params[:terms]}%").limit(10)
    @top_results    = results.order("instmed desc")
    @bottom_results = results.order("instmed asc")
  end
end
