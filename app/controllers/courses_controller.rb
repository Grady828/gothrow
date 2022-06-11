class CoursesController < ApplicationController
    def search
        
        if params[:findzip].present?
           
            @courses = Courses.new_lookup(params[:findzip])
             
            if @courses 
                render "pages/courses"
            else
                flash[:alert] = "Please enter a valid zip code to search"  
                redirect_to courses_path  
            end    
        else
            flash[:alert] = "Please enter a zip code to search"  
            redirect_to courses_path
        end          
    end
end        

