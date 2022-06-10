class CoursesController < ApplicationController
    def search
        if params[:findzip].present?
            @courses = Courses.new_lookup(params[:findzip])
            if @courses
                render "pages/courses"
            else
                flash[:alert] = "Please enter a valid symbol to search"  
                redirect_to my_portfolio_path  
            end    
        else
            flash[:alert] = "Please enter a symbol to search"  
            redirect_to my_portfolio_path
        end          
    end
end        
end
