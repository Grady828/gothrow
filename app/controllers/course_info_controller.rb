class CourseInfoController < ApplicationController
    def course
        
        if params[:course_id].present?
        @course = Course.new_lookup(params[:course_id])
            if @course
                render "course_info/course" 
            else
                redirect_to courses_path
            end
        end 
    end
end
